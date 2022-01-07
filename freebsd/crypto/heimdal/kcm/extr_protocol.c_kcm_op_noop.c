
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_storage ;
typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int kcm_operation ;
typedef int kcm_client ;


 int KCM_LOG_REQUEST (int ,int *,int ) ;

__attribute__((used)) static krb5_error_code
kcm_op_noop(krb5_context context,
     kcm_client *client,
     kcm_operation opcode,
     krb5_storage *request,
     krb5_storage *response)
{
    KCM_LOG_REQUEST(context, client, opcode);

    return 0;
}
