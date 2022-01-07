
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius_client_data {int ctx; } ;
typedef scalar_t__ RadiusType ;


 int EACCES ;
 int EBADF ;
 int EDESTADDRREQ ;
 int EINVAL ;
 int ENETUNREACH ;
 int ENOTCONN ;
 int HOSTAPD_LEVEL_INFO ;
 int HOSTAPD_MODULE_RADIUS ;
 int MSG_INFO ;
 scalar_t__ RADIUS_ACCT ;
 scalar_t__ RADIUS_ACCT_INTERIM ;
 int errno ;
 int hostapd_logger (int ,int *,int ,int ,char*) ;
 int radius_client_init_acct (struct radius_client_data*) ;
 int radius_client_init_auth (struct radius_client_data*) ;
 int strerror (int) ;
 int wpa_printf (int ,char*,int,int ) ;

__attribute__((used)) static int radius_client_handle_send_error(struct radius_client_data *radius,
        int s, RadiusType msg_type)
{

 int _errno = errno;
 wpa_printf(MSG_INFO, "send[RADIUS,s=%d]: %s", s, strerror(errno));
 if (_errno == ENOTCONN || _errno == EDESTADDRREQ || _errno == EINVAL ||
     _errno == EBADF || _errno == ENETUNREACH || _errno == EACCES) {
  hostapd_logger(radius->ctx, ((void*)0), HOSTAPD_MODULE_RADIUS,
          HOSTAPD_LEVEL_INFO,
          "Send failed - maybe interface status changed -"
          " try to connect again");
  if (msg_type == RADIUS_ACCT ||
      msg_type == RADIUS_ACCT_INTERIM) {
   radius_client_init_acct(radius);
   return 0;
  } else {
   radius_client_init_auth(radius);
   return 1;
  }
 }


 return 0;
}
