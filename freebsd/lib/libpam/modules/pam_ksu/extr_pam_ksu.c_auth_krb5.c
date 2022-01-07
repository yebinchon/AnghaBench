
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pam_handle_t ;
typedef int krb5_verify_init_creds_opt ;
typedef int krb5_principal ;
typedef int krb5_get_init_creds_opt ;
typedef int krb5_creds ;
typedef int krb5_context ;


 int PAM_AUTHTOK ;
 int PAM_AUTH_ERR ;
 int PAM_BUF_ERR ;
 int PAM_LOG (char*,char const*) ;
 int PAM_SUCCESS ;
 int asprintf (char**,char*,...) ;
 int free (char*) ;
 int krb5_free_cred_contents (int ,int *) ;
 int krb5_free_error_message (int ,char const*) ;
 char* krb5_get_error_message (int ,long) ;
 long krb5_get_init_creds_opt_alloc (int ,int **) ;
 int krb5_get_init_creds_opt_free (int ,int *) ;
 long krb5_get_init_creds_password (int ,int *,int ,char const*,int *,int *,int ,int *,int *) ;
 long krb5_verify_init_creds (int ,int *,int *,int *,int *,int *) ;
 int krb5_verify_init_creds_opt_init (int *) ;
 int krb5_verify_init_creds_opt_set_ap_req_nofail (int *,int) ;
 int pam_get_authtok (int *,int ,char const**,char*) ;

__attribute__((used)) static int
auth_krb5(pam_handle_t *pamh, krb5_context context, const char *su_principal_name,
    krb5_principal su_principal)
{
 krb5_creds creds;
 krb5_get_init_creds_opt *gic_opt;
 krb5_verify_init_creds_opt vic_opt;
 const char *pass;
 char *prompt;
 long rv;
 int pamret;

 prompt = ((void*)0);
 krb5_verify_init_creds_opt_init(&vic_opt);
 if (su_principal_name != ((void*)0))
  (void)asprintf(&prompt, "Password for %s:", su_principal_name);
 else
  (void)asprintf(&prompt, "Password:");
 if (prompt == ((void*)0))
  return (PAM_BUF_ERR);
 pass = ((void*)0);
 pamret = pam_get_authtok(pamh, PAM_AUTHTOK, &pass, prompt);
 free(prompt);
 if (pamret != PAM_SUCCESS)
  return (pamret);
 rv = krb5_get_init_creds_opt_alloc(context, &gic_opt);
 if (rv != 0) {
  const char *msg = krb5_get_error_message(context, rv);
  PAM_LOG("krb5_get_init_creds_opt_alloc: %s", msg);
  krb5_free_error_message(context, msg);
  return (PAM_AUTH_ERR);
 }
 rv = krb5_get_init_creds_password(context, &creds, su_principal,
     pass, ((void*)0), ((void*)0), 0, ((void*)0), gic_opt);
 krb5_get_init_creds_opt_free(context, gic_opt);
 if (rv != 0) {
  const char *msg = krb5_get_error_message(context, rv);
  PAM_LOG("krb5_get_init_creds_password: %s", msg);
  krb5_free_error_message(context, msg);
  return (PAM_AUTH_ERR);
 }
 krb5_verify_init_creds_opt_set_ap_req_nofail(&vic_opt, 1);
 rv = krb5_verify_init_creds(context, &creds, ((void*)0), ((void*)0), ((void*)0),
     &vic_opt);
 krb5_free_cred_contents(context, &creds);
 if (rv != 0) {
  const char *msg = krb5_get_error_message(context, rv);
  PAM_LOG("krb5_verify_init_creds: %s", msg);
  krb5_free_error_message(context, msg);
  return (PAM_AUTH_ERR);
 }
 return (PAM_SUCCESS);
}
