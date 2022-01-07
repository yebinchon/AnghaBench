
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_principal ;
typedef int krb5_get_init_creds_opt ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_data ;
typedef int krb5_creds ;
typedef int krb5_context ;


 int FALSE ;
 scalar_t__ KRB5KRB_AP_ERR_BAD_INTEGRITY ;
 scalar_t__ KRB5KRB_AP_ERR_MODIFIED ;
 int asprintf (char**,char*,char*) ;
 int errx (int,char*,scalar_t__) ;
 int free (char*) ;
 int krb5_err (int ,int,scalar_t__,char*,...) ;
 int krb5_free_cred_contents (int ,int *) ;
 int krb5_free_principal (int ,int ) ;
 int krb5_get_init_creds_opt_alloc (int ,int **) ;
 int krb5_get_init_creds_opt_free (int ,int *) ;
 int krb5_get_init_creds_opt_set_forwardable (int *,int ) ;
 int krb5_get_init_creds_opt_set_proxiable (int *,int ) ;
 int krb5_get_init_creds_opt_set_tkt_life (int *,int) ;
 scalar_t__ krb5_get_init_creds_password (int ,int *,int ,char*,int ,int *,int ,char*,int *) ;
 scalar_t__ krb5_init_context (int *) ;
 scalar_t__ krb5_parse_name (int ,char*,int *) ;
 scalar_t__ krb5_set_password (int ,int *,char*,int *,int*,int *,int *) ;
 int nop_prompter ;
 unsigned int rand () ;
 unsigned int read_words (char const*,char***) ;

__attribute__((used)) static void
generate_requests (const char *filename, unsigned nreq)
{
    krb5_context context;
    krb5_error_code ret;
    int i;
    char **words;
    unsigned nwords;

    ret = krb5_init_context (&context);
    if (ret)
 errx (1, "krb5_init_context failed: %d", ret);

    nwords = read_words (filename, &words);

    for (i = 0; i < nreq; ++i) {
 char *name = words[rand() % nwords];
 krb5_get_init_creds_opt *opt;
 krb5_creds cred;
 krb5_principal principal;
 int result_code;
 krb5_data result_code_string, result_string;
 char *old_pwd, *new_pwd;

 krb5_get_init_creds_opt_alloc (context, &opt);
 krb5_get_init_creds_opt_set_tkt_life (opt, 300);
 krb5_get_init_creds_opt_set_forwardable (opt, FALSE);
 krb5_get_init_creds_opt_set_proxiable (opt, FALSE);

 ret = krb5_parse_name (context, name, &principal);
 if (ret)
     krb5_err (context, 1, ret, "krb5_parse_name %s", name);

 asprintf (&old_pwd, "%s", name);
 asprintf (&new_pwd, "%s2", name);

 ret = krb5_get_init_creds_password (context,
         &cred,
         principal,
         old_pwd,
         nop_prompter,
         ((void*)0),
         0,
         "kadmin/changepw",
         opt);
 if( ret == KRB5KRB_AP_ERR_BAD_INTEGRITY
     || ret == KRB5KRB_AP_ERR_MODIFIED) {
     char *tmp;

     tmp = new_pwd;
     new_pwd = old_pwd;
     old_pwd = tmp;

     ret = krb5_get_init_creds_password (context,
      &cred,
      principal,
      old_pwd,
      nop_prompter,
      ((void*)0),
      0,
      "kadmin/changepw",
      opt);
 }
 if (ret)
     krb5_err (context, 1, ret, "krb5_get_init_creds_password");

 krb5_free_principal (context, principal);


 ret = krb5_set_password (context,
     &cred,
     new_pwd,
     ((void*)0),
     &result_code,
     &result_code_string,
     &result_string);
 if (ret)
     krb5_err (context, 1, ret, "krb5_change_password");

 free (old_pwd);
 free (new_pwd);
 krb5_free_cred_contents (context, &cred);
 krb5_get_init_creds_opt_free(context, opt);
    }
}
