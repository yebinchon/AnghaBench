
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct kcm_ntlm_cred {int uuid; int session; int uid; struct kcm_ntlm_cred* next; int nthash; int domain; int user; } ;
typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_data ;
typedef int krb5_context ;
typedef int kcm_operation ;
struct TYPE_4__ {int session; int uid; } ;
typedef TYPE_1__ kcm_client ;


 scalar_t__ ENOMEM ;
 int RAND_bytes (int ,int) ;
 struct kcm_ntlm_cred* calloc (int,int) ;
 struct kcm_ntlm_cred* find_ntlm_cred (int ,int ,TYPE_1__*) ;
 int free_cred (struct kcm_ntlm_cred*) ;
 scalar_t__ krb5_ret_data (int *,int *) ;
 scalar_t__ krb5_ret_stringz (int *,int *) ;
 int krb5_storage_write (int *,int *,int) ;
 struct kcm_ntlm_cred* ntlm_head ;

__attribute__((used)) static krb5_error_code
kcm_op_add_ntlm_cred(krb5_context context,
       kcm_client *client,
       kcm_operation opcode,
       krb5_storage *request,
       krb5_storage *response)
{
    struct kcm_ntlm_cred *cred, *c;
    krb5_error_code ret;

    cred = calloc(1, sizeof(*cred));
    if (cred == ((void*)0))
 return ENOMEM;

    RAND_bytes(cred->uuid, sizeof(cred->uuid));

    ret = krb5_ret_stringz(request, &cred->user);
    if (ret)
 goto error;

    ret = krb5_ret_stringz(request, &cred->domain);
    if (ret)
 goto error;

    ret = krb5_ret_data(request, &cred->nthash);
    if (ret)
 goto error;


    c = find_ntlm_cred(cred->user, cred->domain, client);
    if (c) {
 krb5_data hash = c->nthash;
 c->nthash = cred->nthash;
 cred->nthash = hash;
 free_cred(cred);
 cred = c;
    } else {
 cred->next = ntlm_head;
 ntlm_head = cred;
    }

    cred->uid = client->uid;
    cred->session = client->session;


    (void)krb5_storage_write(response, &cred->uuid, sizeof(cred->uuid));

    return 0;

 error:
    free_cred(cred);

    return ret;
}
