
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int krb5_storage ;
typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_5__ {int context; } ;
typedef TYPE_1__ kadm5_server_context ;


 int CHECK (int ) ;
 int INSIST (int) ;
 int KADM5_PRIV_DELETE ;
 scalar_t__ VERSION2 ;
 scalar_t__ _kadm5_acl_check_permission (TYPE_1__*,int ,int ) ;
 scalar_t__ kadm5_delete_principal (TYPE_1__*,int ) ;
 int krb5_free_principal (int ,int ) ;
 int krb5_ret_uint32 (int *,scalar_t__*) ;
 int krb5_store_uint32 (int *,scalar_t__) ;
 int krb5_warn (int ,scalar_t__,char*) ;
 int ret_principal_xdr (int ,int *,int *) ;

__attribute__((used)) static void
proc_delete_principal(kadm5_server_context *contextp,
        krb5_storage *in,
        krb5_storage *out)
{
    uint32_t version;
    krb5_principal princ;
    krb5_error_code ret;

    CHECK(krb5_ret_uint32(in, &version));
    INSIST(version == VERSION2);
    CHECK(ret_principal_xdr(contextp->context, in, &princ));

    ret = _kadm5_acl_check_permission(contextp, KADM5_PRIV_DELETE, princ);
    if (ret)
 goto fail;

    ret = kadm5_delete_principal(contextp, princ);

 fail:
    krb5_warn(contextp->context, ret, "delete principal");
    CHECK(krb5_store_uint32(out, VERSION2));
    CHECK(krb5_store_uint32(out, ret));

    krb5_free_principal(contextp->context, princ);
}
