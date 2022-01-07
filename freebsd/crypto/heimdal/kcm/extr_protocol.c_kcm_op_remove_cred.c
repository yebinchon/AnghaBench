
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_creds ;
typedef int krb5_context ;
typedef int kcm_operation ;
typedef int kcm_client ;
typedef int kcm_ccache ;


 int KCM_LOG_REQUEST_NAME (int ,int *,int ,char*) ;
 int free (char*) ;
 scalar_t__ kcm_ccache_remove_cred (int ,int ,int ,int *) ;
 scalar_t__ kcm_ccache_resolve_client (int ,int *,int ,char*,int *) ;
 int kcm_release_ccache (int ,int ) ;
 int krb5_free_cred_contents (int ,int *) ;
 scalar_t__ krb5_ret_creds_tag (int *,int *) ;
 scalar_t__ krb5_ret_stringz (int *,char**) ;
 scalar_t__ krb5_ret_uint32 (int *,int *) ;

__attribute__((used)) static krb5_error_code
kcm_op_remove_cred(krb5_context context,
     kcm_client *client,
     kcm_operation opcode,
     krb5_storage *request,
     krb5_storage *response)
{
    uint32_t whichfields;
    krb5_creds mcreds;
    krb5_error_code ret;
    kcm_ccache ccache;
    char *name;

    ret = krb5_ret_stringz(request, &name);
    if (ret)
 return ret;

    KCM_LOG_REQUEST_NAME(context, client, opcode, name);

    ret = krb5_ret_uint32(request, &whichfields);
    if (ret) {
 free(name);
 return ret;
    }

    ret = krb5_ret_creds_tag(request, &mcreds);
    if (ret) {
 free(name);
 return ret;
    }

    ret = kcm_ccache_resolve_client(context, client, opcode,
        name, &ccache);
    if (ret) {
 free(name);
 krb5_free_cred_contents(context, &mcreds);
 return ret;
    }

    ret = kcm_ccache_remove_cred(context, ccache, whichfields, &mcreds);



    free(name);
    krb5_free_cred_contents(context, &mcreds);
    kcm_release_ccache(context, ccache);

    return ret;
}
