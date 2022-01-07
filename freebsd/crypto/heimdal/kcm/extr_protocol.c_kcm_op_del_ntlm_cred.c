
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcm_ntlm_cred {struct kcm_ntlm_cred* next; int session; int uid; int domain; int user; } ;
typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int kcm_operation ;
typedef int kcm_client ;


 int free (char*) ;
 int free_cred (struct kcm_ntlm_cred*) ;
 scalar_t__ kcm_is_same_session (int *,int ,int ) ;
 scalar_t__ krb5_ret_stringz (int *,char**) ;
 struct kcm_ntlm_cred* ntlm_head ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static krb5_error_code
kcm_op_del_ntlm_cred(krb5_context context,
       kcm_client *client,
       kcm_operation opcode,
       krb5_storage *request,
       krb5_storage *response)
{
    struct kcm_ntlm_cred **cp, *c;
    char *user = ((void*)0), *domain = ((void*)0);
    krb5_error_code ret;

    ret = krb5_ret_stringz(request, &user);
    if (ret)
 goto error;

    ret = krb5_ret_stringz(request, &domain);
    if (ret)
 goto error;

    for (cp = &ntlm_head; *cp != ((void*)0); cp = &(*cp)->next) {
 if (strcmp(user, (*cp)->user) == 0 && strcmp(domain, (*cp)->domain) == 0 &&
     kcm_is_same_session(client, (*cp)->uid, (*cp)->session))
 {
     c = *cp;
     *cp = c->next;

     free_cred(c);
     break;
 }
    }

 error:
    free(user);
    free(domain);

    return ret;
}
