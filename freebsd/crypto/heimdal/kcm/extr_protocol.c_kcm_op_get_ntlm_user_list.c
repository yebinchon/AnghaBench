
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcm_ntlm_cred {int domain; int user; int session; int uid; struct kcm_ntlm_cred* next; } ;
typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int kcm_operation ;
typedef int kcm_client ;


 int kcm_is_same_session (int *,int ,int ) ;
 scalar_t__ krb5_store_stringz (int *,int ) ;
 scalar_t__ krb5_store_uint32 (int *,int) ;
 struct kcm_ntlm_cred* ntlm_head ;

__attribute__((used)) static krb5_error_code
kcm_op_get_ntlm_user_list(krb5_context context,
     kcm_client *client,
     kcm_operation opcode,
     krb5_storage *request,
     krb5_storage *response)
{
    struct kcm_ntlm_cred *c;
    krb5_error_code ret;

    for (c = ntlm_head; c != ((void*)0); c = c->next) {
 if (!kcm_is_same_session(client, c->uid, c->session))
     continue;

 ret = krb5_store_uint32(response, 1);
 if (ret)
     return ret;
 ret = krb5_store_stringz(response, c->user);
 if (ret)
     return ret;
 ret = krb5_store_stringz(response, c->domain);
 if (ret)
     return ret;
    }
    return krb5_store_uint32(response, 0);
}
