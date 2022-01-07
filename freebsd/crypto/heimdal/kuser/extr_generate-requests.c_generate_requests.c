
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_creds ;
typedef int krb5_context ;
typedef int cred ;


 int errx (int,char*,scalar_t__) ;
 int krb5_err (int ,int,scalar_t__,char*,char*) ;
 int krb5_free_cred_contents (int ,int *) ;
 int krb5_free_principal (int ,int ) ;
 scalar_t__ krb5_get_init_creds_password (int ,int *,int ,char*,int *,int *,int ,int *,int *) ;
 scalar_t__ krb5_init_context (int *) ;
 scalar_t__ krb5_parse_name (int ,char*,int *) ;
 int memset (int *,int ,int) ;
 unsigned int rand () ;
 unsigned int read_words (char const*,char***) ;

__attribute__((used)) static void
generate_requests (const char *filename, unsigned nreq)
{
    krb5_principal client;
    krb5_context context;
    krb5_error_code ret;
    krb5_creds cred;
    int i;
    char **words;
    unsigned nwords;

    ret = krb5_init_context (&context);
    if (ret)
 errx (1, "krb5_init_context failed: %d", ret);

    nwords = read_words (filename, &words);

    for (i = 0; i < nreq; ++i) {
 char *name = words[rand() % nwords];

 memset(&cred, 0, sizeof(cred));

 ret = krb5_parse_name (context, name, &client);
 if (ret)
     krb5_err (context, 1, ret, "krb5_parse_name %s", name);

 ret = krb5_get_init_creds_password (context, &cred, client, "",
         ((void*)0), ((void*)0), 0, ((void*)0), ((void*)0));
 if (ret)
     krb5_free_cred_contents (context, &cred);
 krb5_free_principal(context, client);
    }
}
