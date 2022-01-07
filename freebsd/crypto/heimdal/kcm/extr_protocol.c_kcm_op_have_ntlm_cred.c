
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcm_ntlm_cred {int dummy; } ;
typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int kcm_operation ;
typedef int kcm_client ;


 scalar_t__ ENOENT ;
 struct kcm_ntlm_cred* find_ntlm_cred (char*,char*,int *) ;
 int free (char*) ;
 scalar_t__ krb5_ret_stringz (int *,char**) ;

__attribute__((used)) static krb5_error_code
kcm_op_have_ntlm_cred(krb5_context context,
       kcm_client *client,
       kcm_operation opcode,
       krb5_storage *request,
       krb5_storage *response)
{
    struct kcm_ntlm_cred *c;
    char *user = ((void*)0), *domain = ((void*)0);
    krb5_error_code ret;

    ret = krb5_ret_stringz(request, &user);
    if (ret)
 goto error;

    ret = krb5_ret_stringz(request, &domain);
    if (ret)
 goto error;

    if (domain[0] == '\0') {
 free(domain);
 domain = ((void*)0);
    }

    c = find_ntlm_cred(user, domain, client);
    if (c == ((void*)0))
 ret = ENOENT;

 error:
    free(user);
    if (domain)
 free(domain);

    return ret;
}
