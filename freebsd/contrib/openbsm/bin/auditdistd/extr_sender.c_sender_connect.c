
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int welcome ;
typedef int val ;
typedef int uintmax_t ;
struct proto_conn {int dummy; } ;
typedef int rnd ;
typedef int resp ;
typedef unsigned char int16_t ;
typedef int hash ;
struct TYPE_4__ {unsigned char* adc_name; int adc_timeout; } ;
struct TYPE_3__ {int adh_version; unsigned char adh_trail_offset; unsigned char adh_trail_name; struct proto_conn* adh_remote; int adh_remoteaddr; int adh_password; struct proto_conn* adh_conn; } ;


 int ADIST_VERSION ;
 int EVP_sha256 () ;
 int EX_TEMPFAIL ;
 int * HMAC (int ,int ,int,unsigned char*,int,unsigned char*,int *) ;
 int LOG_WARNING ;
 int PJDLOG_ASSERT (int ) ;
 TYPE_2__* adcfg ;
 TYPE_1__* adhost ;
 int adist_random (unsigned char*,int) ;
 int adist_remote_cond ;
 int adist_remote_lock ;
 int adist_remote_mtx ;
 int atoi (char*) ;
 int bzero (char*,int) ;
 int cv_signal (int *) ;
 unsigned char errno ;
 int isdigit (char) ;
 unsigned char le64toh (unsigned char) ;
 scalar_t__ memcmp (unsigned char*,unsigned char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pjdlog_debug (int,char*,...) ;
 int pjdlog_errno (int ,char*,...) ;
 int pjdlog_exit (int ,char*) ;
 int pjdlog_info (char*) ;
 int pjdlog_warning (char*,...) ;
 int proto_close (struct proto_conn*) ;
 scalar_t__ proto_connect_wait (struct proto_conn*,int ) ;
 scalar_t__ proto_connection_recv (struct proto_conn*,int,struct proto_conn**) ;
 int proto_recv (struct proto_conn*,...) ;
 int proto_send (struct proto_conn*,...) ;
 scalar_t__ proto_timeout (struct proto_conn*,int ) ;
 int rw_unlock (int *) ;
 int rw_wlock (int *) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ strlen (int ) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
sender_connect(void)
{
 unsigned char rnd[32], hash[32], resp[32];
 struct proto_conn *conn;
 char welcome[8];
 int16_t val;

 val = 1;
 if (proto_send(adhost->adh_conn, &val, sizeof(val)) < 0) {
  pjdlog_exit(EX_TEMPFAIL,
      "Unable to send connection request to parent");
 }
 if (proto_recv(adhost->adh_conn, &val, sizeof(val)) < 0) {
  pjdlog_exit(EX_TEMPFAIL,
      "Unable to receive reply to connection request from parent");
 }
 if (val != 0) {
  errno = val;
  pjdlog_errno(LOG_WARNING, "Unable to connect to %s",
      adhost->adh_remoteaddr);
  return (-1);
 }
 if (proto_connection_recv(adhost->adh_conn, 1, &conn) < 0) {
  pjdlog_exit(EX_TEMPFAIL,
      "Unable to receive connection from parent");
 }
 if (proto_connect_wait(conn, adcfg->adc_timeout) < 0) {
  pjdlog_errno(LOG_WARNING, "Unable to connect to %s",
      adhost->adh_remoteaddr);
  proto_close(conn);
  return (-1);
 }
 pjdlog_debug(1, "Connected to %s.", adhost->adh_remoteaddr);

 if (proto_timeout(conn, adcfg->adc_timeout) < 0)
  pjdlog_errno(LOG_WARNING, "Unable to set connection timeout");
 else
  pjdlog_debug(1, "Timeout set to %d.", adcfg->adc_timeout);


 (void)snprintf(welcome, sizeof(welcome), "ADIST%02d", ADIST_VERSION);
 if (proto_send(conn, welcome, sizeof(welcome)) < 0) {
  pjdlog_errno(LOG_WARNING,
      "Unable to send welcome message to %s",
      adhost->adh_remoteaddr);
  proto_close(conn);
  return (-1);
 }
 pjdlog_debug(1, "Welcome message sent (%s).", welcome);
 bzero(welcome, sizeof(welcome));
 if (proto_recv(conn, welcome, sizeof(welcome)) < 0) {
  pjdlog_errno(LOG_WARNING,
      "Unable to receive welcome message from %s",
      adhost->adh_remoteaddr);
  proto_close(conn);
  return (-1);
 }
 if (strncmp(welcome, "ADIST", 5) != 0 || !isdigit(welcome[5]) ||
     !isdigit(welcome[6]) || welcome[7] != '\0') {
  pjdlog_warning("Invalid welcome message from %s.",
      adhost->adh_remoteaddr);
  proto_close(conn);
  return (-1);
 }
 pjdlog_debug(1, "Welcome message received (%s).", welcome);




 adhost->adh_version = atoi(welcome + 5);
 if (adhost->adh_version > ADIST_VERSION) {
  pjdlog_warning("Invalid version number from %s (%d received, up to %d supported).",
      adhost->adh_remoteaddr, adhost->adh_version, ADIST_VERSION);
  proto_close(conn);
  return (-1);
 }

 pjdlog_debug(1, "Version %d negotiated with %s.", adhost->adh_version,
     adhost->adh_remoteaddr);

 if (proto_send(conn, adcfg->adc_name, sizeof(adcfg->adc_name)) == -1) {
  pjdlog_errno(LOG_WARNING, "Unable to send name to %s",
      adhost->adh_remoteaddr);
  proto_close(conn);
  return (-1);
 }
 pjdlog_debug(1, "Name (%s) sent.", adcfg->adc_name);

 if (proto_recv(conn, rnd, sizeof(rnd)) == -1) {
  pjdlog_errno(LOG_WARNING, "Unable to receive challenge from %s",
      adhost->adh_remoteaddr);
  proto_close(conn);
  return (-1);
 }
 pjdlog_debug(1, "Challenge received.");

 if (HMAC(EVP_sha256(), adhost->adh_password,
     (int)strlen(adhost->adh_password), rnd, (int)sizeof(rnd), hash,
     ((void*)0)) == ((void*)0)) {
  pjdlog_warning("Unable to generate response.");
  proto_close(conn);
  return (-1);
 }
 pjdlog_debug(1, "Response generated.");

 if (proto_send(conn, hash, sizeof(hash)) == -1) {
  pjdlog_errno(LOG_WARNING, "Unable to send response to %s",
      adhost->adh_remoteaddr);
  proto_close(conn);
  return (-1);
 }
 pjdlog_debug(1, "Response sent.");

 if (adist_random(rnd, sizeof(rnd)) == -1) {
  pjdlog_warning("Unable to generate challenge.");
  proto_close(conn);
  return (-1);
 }
 pjdlog_debug(1, "Challenge generated.");

 if (proto_send(conn, rnd, sizeof(rnd)) == -1) {
  pjdlog_errno(LOG_WARNING, "Unable to send challenge to %s",
      adhost->adh_remoteaddr);
  proto_close(conn);
  return (-1);
 }
 pjdlog_debug(1, "Challenge sent.");

 if (proto_recv(conn, resp, sizeof(resp)) == -1) {
  pjdlog_errno(LOG_WARNING, "Unable to receive response from %s",
      adhost->adh_remoteaddr);
  proto_close(conn);
  return (-1);
 }
 pjdlog_debug(1, "Response received.");

 if (HMAC(EVP_sha256(), adhost->adh_password,
     (int)strlen(adhost->adh_password), rnd, (int)sizeof(rnd), hash,
     ((void*)0)) == ((void*)0)) {
  pjdlog_warning("Unable to generate hash.");
  proto_close(conn);
  return (-1);
 }
 pjdlog_debug(1, "Hash generated.");

 if (memcmp(resp, hash, sizeof(hash)) != 0) {
  pjdlog_warning("Invalid response from %s (wrong password?).",
      adhost->adh_remoteaddr);
  proto_close(conn);
  return (-1);
 }
 pjdlog_info("Receiver authenticated.");

 if (proto_recv(conn, &adhost->adh_trail_offset,
     sizeof(adhost->adh_trail_offset)) == -1) {
  pjdlog_errno(LOG_WARNING,
      "Unable to receive size of the most recent trail file from %s",
      adhost->adh_remoteaddr);
  proto_close(conn);
  return (-1);
 }
 adhost->adh_trail_offset = le64toh(adhost->adh_trail_offset);
 if (proto_recv(conn, &adhost->adh_trail_name,
     sizeof(adhost->adh_trail_name)) == -1) {
  pjdlog_errno(LOG_WARNING,
      "Unable to receive name of the most recent trail file from %s",
      adhost->adh_remoteaddr);
  proto_close(conn);
  return (-1);
 }
 pjdlog_debug(1, "Trail name (%s) and offset (%ju) received.",
     adhost->adh_trail_name, (uintmax_t)adhost->adh_trail_offset);

 rw_wlock(&adist_remote_lock);
 mtx_lock(&adist_remote_mtx);
 PJDLOG_ASSERT(adhost->adh_remote == ((void*)0));
 PJDLOG_ASSERT(conn != ((void*)0));
 adhost->adh_remote = conn;
 mtx_unlock(&adist_remote_mtx);
 rw_unlock(&adist_remote_lock);
 cv_signal(&adist_remote_cond);

 return (0);
}
