
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sim_db_data {int sock; } ;


 int ECONNREFUSED ;
 int EDESTADDRREQ ;
 int EINVAL ;
 int ENOTCONN ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int eap_sim_db_close_socket (struct eap_sim_db_data*) ;
 scalar_t__ eap_sim_db_open_socket (struct eap_sim_db_data*) ;
 int errno ;
 scalar_t__ send (int ,char const*,size_t,int ) ;
 int strerror (int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int eap_sim_db_send(struct eap_sim_db_data *data, const char *msg,
      size_t len)
{
 int _errno = 0;

 if (send(data->sock, msg, len, 0) < 0) {
  _errno = errno;
  wpa_printf(MSG_INFO, "send[EAP-SIM DB UNIX]: %s",
      strerror(errno));
 }

 if (_errno == ENOTCONN || _errno == EDESTADDRREQ || _errno == EINVAL ||
     _errno == ECONNREFUSED) {

  eap_sim_db_close_socket(data);
  if (eap_sim_db_open_socket(data) < 0)
   return -1;
  wpa_printf(MSG_DEBUG, "EAP-SIM DB: Reconnected to the "
      "external server");
  if (send(data->sock, msg, len, 0) < 0) {
   wpa_printf(MSG_INFO, "send[EAP-SIM DB UNIX]: %s",
       strerror(errno));
   return -1;
  }
 }

 return 0;
}
