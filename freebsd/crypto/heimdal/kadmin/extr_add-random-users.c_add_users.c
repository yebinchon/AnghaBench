
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;


 int KADM5_ADMIN_SERVICE ;
 int add_user (int ,void*,unsigned int,char**) ;
 int errx (int,char*,scalar_t__) ;
 int kadm5_destroy (void*) ;
 scalar_t__ kadm5_s_init_with_password_ctx (int ,int ,int *,int ,int *,int ,int ,void**) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_free_context (int ) ;
 scalar_t__ krb5_init_context (int *) ;
 unsigned int read_words (char const*,char***) ;

__attribute__((used)) static void
add_users (const char *filename, unsigned n)
{
    krb5_error_code ret;
    int i;
    void *kadm_handle;
    krb5_context context;
    unsigned nwords;
    char **words;

    ret = krb5_init_context(&context);
    if (ret)
 errx (1, "krb5_init_context failed: %d", ret);
    ret = kadm5_s_init_with_password_ctx(context,
      KADM5_ADMIN_SERVICE,
      ((void*)0),
      KADM5_ADMIN_SERVICE,
      ((void*)0), 0, 0,
      &kadm_handle);
    if(ret)
 krb5_err(context, 1, ret, "kadm5_init_with_password");

    nwords = read_words (filename, &words);

    for (i = 0; i < n; ++i)
 add_user (context, kadm_handle, nwords, words);
    kadm5_destroy(kadm_handle);
    krb5_free_context(context);
}
