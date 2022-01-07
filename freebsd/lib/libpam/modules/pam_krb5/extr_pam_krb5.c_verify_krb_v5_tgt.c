
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int krb5_principal ;
typedef int krb5_keyblock ;
typedef int krb5_error_code ;
struct TYPE_5__ {scalar_t__ data; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_context ;
typedef int krb5_ccache ;
typedef int * krb5_auth_context ;


 int BUFSIZ ;
 int KRB5_NT_SRV_HST ;
 int LOG_DEBUG ;
 int compat_free_data_contents (int ,TYPE_1__*) ;
 int compat_princ_component (int ,int ,int) ;
 int krb5_auth_con_free (int ,int *) ;
 int krb5_free_error_message (int ,char const*) ;
 int krb5_free_keyblock (int ,int *) ;
 int krb5_free_principal (int ,int ) ;
 char* krb5_get_error_message (int ,int) ;
 int krb5_kt_read_service_key (int ,int *,int ,int ,int ,int **) ;
 int krb5_mk_req (int ,int **,int ,char const*,char*,int *,int ,TYPE_1__*) ;
 int krb5_rd_req (int ,int **,TYPE_1__*,int ,int *,int *,int *) ;
 int krb5_sname_to_principal (int ,int *,char const*,int ,int *) ;
 int strncpy (char*,int ,int) ;
 int syslog (int ,char*,char*,char const*) ;

__attribute__((used)) static int
verify_krb_v5_tgt(krb5_context context, krb5_ccache ccache,
    char *pam_service, int debug)
{
 krb5_error_code retval;
 krb5_principal princ;
 krb5_keyblock *keyblock;
 krb5_data packet;
 krb5_auth_context auth_context;
 char phost[BUFSIZ];
 const char *services[3], **service;

 packet.data = 0;
 services[0] = "host";
 services[1] = pam_service;
 services[2] = ((void*)0);
 keyblock = ((void*)0);
 retval = -1;
 for (service = &services[0]; *service != ((void*)0); service++) {
  retval = krb5_sname_to_principal(context, ((void*)0), *service,
      KRB5_NT_SRV_HST, &princ);
  if (retval != 0) {
   if (debug) {
    const char *msg = krb5_get_error_message(
        context, retval);
    syslog(LOG_DEBUG,
        "pam_krb5: verify_krb_v5_tgt(): %s: %s",
        "krb5_sname_to_principal()", msg);
    krb5_free_error_message(context, msg);
   }
   return -1;
  }


  strncpy(phost, compat_princ_component(context, princ, 1),
      BUFSIZ);
  phost[BUFSIZ - 1] = '\0';






  retval = krb5_kt_read_service_key(context, ((void*)0), princ, 0, 0,
      &keyblock);
  if (retval != 0)
   continue;
  break;
 }
 if (retval != 0) {

  if (debug) {
   const char *msg = krb5_get_error_message(context,
       retval);
   syslog(LOG_DEBUG,
       "pam_krb5: verify_krb_v5_tgt(): %s: %s",
       "krb5_kt_read_service_key()", msg);
   krb5_free_error_message(context, msg);
  }
  retval = 0;
  goto cleanup;
 }
 if (keyblock)
  krb5_free_keyblock(context, keyblock);


 auth_context = ((void*)0);
 retval = krb5_mk_req(context, &auth_context, 0, *service, phost,
  ((void*)0), ccache, &packet);
 if (auth_context) {
  krb5_auth_con_free(context, auth_context);
  auth_context = ((void*)0);
 }
 if (retval) {
  if (debug) {
   const char *msg = krb5_get_error_message(context,
       retval);
   syslog(LOG_DEBUG,
       "pam_krb5: verify_krb_v5_tgt(): %s: %s",
       "krb5_mk_req()", msg);
   krb5_free_error_message(context, msg);
  }
  retval = -1;
  goto cleanup;
 }


 retval = krb5_rd_req(context, &auth_context, &packet, princ, ((void*)0),
     ((void*)0), ((void*)0));
 if (retval) {
  if (debug) {
   const char *msg = krb5_get_error_message(context,
       retval);
   syslog(LOG_DEBUG,
       "pam_krb5: verify_krb_v5_tgt(): %s: %s",
       "krb5_rd_req()", msg);
   krb5_free_error_message(context, msg);
  }
  retval = -1;
 }
 else
  retval = 1;

cleanup:
 if (packet.data)
  compat_free_data_contents(context, &packet);
 krb5_free_principal(context, princ);
 return retval;
}
