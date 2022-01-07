
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_addr; } ;
struct rad_handle {int dummy; } ;
struct addrinfo {scalar_t__ ai_family; scalar_t__ ai_addr; } ;
typedef int hints ;


 scalar_t__ AF_INET ;
 int LOG_CRIT ;
 int MAXHOSTNAMELEN ;
 int RAD_ACCESS_REQUEST ;
 int RAD_AUTHENTICATE_ONLY ;
 int RAD_CALLING_STATION_ID ;
 int RAD_NAS_IDENTIFIER ;
 int RAD_NAS_IP_ADDRESS ;
 int RAD_SERVICE_TYPE ;
 int RAD_STATE ;
 int RAD_USER_NAME ;
 int RAD_USER_PASSWORD ;
 int freeaddrinfo (struct addrinfo*) ;
 scalar_t__ getaddrinfo (char const*,int *,struct addrinfo*,struct addrinfo**) ;
 int gethostname (char*,int) ;
 int memset (struct addrinfo*,int ,int) ;
 int rad_create_request (struct rad_handle*,int ) ;
 int rad_put_addr (struct rad_handle*,int ,int ) ;
 int rad_put_attr (struct rad_handle*,int ,void const*,size_t) ;
 int rad_put_int (struct rad_handle*,int ,int ) ;
 int rad_put_string (struct rad_handle*,int ,char const*) ;
 int rad_strerror (struct rad_handle*) ;
 scalar_t__ strlen (char const*) ;
 int syslog (int ,char*,int ) ;

__attribute__((used)) static int
build_access_request(struct rad_handle *radh, const char *user,
    const char *pass, const char *nas_id, const char *nas_ipaddr,
    const char *rhost, const void *state, size_t state_len)
{
 int error;
 char host[MAXHOSTNAMELEN];
 struct sockaddr_in *haddr;
 struct addrinfo hints;
 struct addrinfo *res;

 if (rad_create_request(radh, RAD_ACCESS_REQUEST) == -1) {
  syslog(LOG_CRIT, "rad_create_request: %s", rad_strerror(radh));
  return (-1);
 }
 if (nas_id == ((void*)0) ||
     (nas_ipaddr != ((void*)0) && strlen(nas_ipaddr) == 0)) {
  if (gethostname(host, sizeof host) != -1) {
   if (nas_id == ((void*)0))
    nas_id = host;
   if (nas_ipaddr != ((void*)0) && strlen(nas_ipaddr) == 0)
    nas_ipaddr = host;
  }
 }
 if ((user != ((void*)0) &&
     rad_put_string(radh, RAD_USER_NAME, user) == -1) ||
     (pass != ((void*)0) &&
     rad_put_string(radh, RAD_USER_PASSWORD, pass) == -1) ||
     (nas_id != ((void*)0) &&
     rad_put_string(radh, RAD_NAS_IDENTIFIER, nas_id) == -1)) {
  syslog(LOG_CRIT, "rad_put_string: %s", rad_strerror(radh));
  return (-1);
 }
 if (nas_ipaddr != ((void*)0)) {
  memset(&hints, 0, sizeof(hints));
  hints.ai_family = AF_INET;
  if (getaddrinfo(nas_ipaddr, ((void*)0), &hints, &res) == 0 &&
      res != ((void*)0) && res->ai_family == AF_INET) {
   haddr = (struct sockaddr_in *)res->ai_addr;
   error = rad_put_addr(radh, RAD_NAS_IP_ADDRESS,
       haddr->sin_addr);
   freeaddrinfo(res);
   if (error == -1) {
    syslog(LOG_CRIT, "rad_put_addr: %s",
        rad_strerror(radh));
    return (-1);
   }
  }
 }
 if (rhost != ((void*)0) &&
     rad_put_string(radh, RAD_CALLING_STATION_ID, rhost) == -1) {
  syslog(LOG_CRIT, "rad_put_string: %s", rad_strerror(radh));
  return (-1);
 }
 if (state != ((void*)0) &&
     rad_put_attr(radh, RAD_STATE, state, state_len) == -1) {
  syslog(LOG_CRIT, "rad_put_attr: %s", rad_strerror(radh));
  return (-1);
 }
 if (rad_put_int(radh, RAD_SERVICE_TYPE, RAD_AUTHENTICATE_ONLY) == -1) {
  syslog(LOG_CRIT, "rad_put_int: %s", rad_strerror(radh));
  return (-1);
 }
 return (0);
}
