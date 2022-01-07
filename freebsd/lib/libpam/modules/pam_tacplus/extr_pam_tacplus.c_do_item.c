
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tac_handle {int dummy; } ;
typedef int (* set_func ) (struct tac_handle*,char const*) ;
typedef int pam_handle_t ;


 int LOG_CRIT ;
 int PAM_SERVICE_ERR ;
 int PAM_SUCCESS ;
 int pam_get_item (int *,int,void const**) ;
 int stub1 (struct tac_handle*,char const*) ;
 int syslog (int ,char*,char const*,int ) ;
 int tac_close (struct tac_handle*) ;
 int tac_strerror (struct tac_handle*) ;

__attribute__((used)) static int
do_item(pam_handle_t *pamh, struct tac_handle *tach, int item,
    set_func func, const char *funcname)
{
 int retval;
 const void *value;

 retval = pam_get_item(pamh, item, &value);
 if (retval != PAM_SUCCESS)
     return retval;
 if (value != ((void*)0) && (*func)(tach, (const char *)value) == -1) {
  syslog(LOG_CRIT, "%s: %s", funcname, tac_strerror(tach));
  tac_close(tach);
  return PAM_SERVICE_ERR;
 }
 return PAM_SUCCESS;
}
