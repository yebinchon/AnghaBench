
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_11__ {int context; } ;
typedef TYPE_1__ kadm5_server_context ;
struct TYPE_12__ {int principal; } ;
typedef TYPE_2__ kadm5_principal_ent_rec ;
typedef int ent ;


 int CHECK (int ) ;
 int INSIST (int) ;
 int KADM5_PRIV_ADD ;
 scalar_t__ VERSION2 ;
 scalar_t__ _kadm5_acl_check_permission (TYPE_1__*,int ,int) ;
 int free (char*) ;
 scalar_t__ kadm5_create_principal (TYPE_1__*,TYPE_2__*,scalar_t__,char*) ;
 int kadm5_free_principal_ent (TYPE_1__*,TYPE_2__*) ;
 int krb5_ret_uint32 (int *,scalar_t__*) ;
 int krb5_store_uint32 (int *,scalar_t__) ;
 int krb5_warn (int ,scalar_t__,char*) ;
 int memset (TYPE_2__*,int ,int) ;
 int ret_principal_ent (int ,int *,TYPE_2__*) ;
 int ret_string_xdr (int *,char**) ;

__attribute__((used)) static void
proc_create_principal(kadm5_server_context *contextp,
        krb5_storage *in,
        krb5_storage *out)
{
    uint32_t version, mask;
    kadm5_principal_ent_rec ent;
    krb5_error_code ret;
    char *password;

    memset(&ent, 0, sizeof(ent));

    CHECK(krb5_ret_uint32(in, &version));
    INSIST(version == VERSION2);
    CHECK(ret_principal_ent(contextp->context, in, &ent));
    CHECK(krb5_ret_uint32(in, &mask));
    CHECK(ret_string_xdr(in, &password));

    INSIST(ent.principal);


    ret = _kadm5_acl_check_permission(contextp, KADM5_PRIV_ADD, ent.principal);
    if (ret)
 goto fail;

    ret = kadm5_create_principal(contextp, &ent, mask, password);

 fail:
    krb5_warn(contextp->context, ret, "create principal");
    CHECK(krb5_store_uint32(out, VERSION2));
    CHECK(krb5_store_uint32(out, ret));

    free(password);
    kadm5_free_principal_ent(contextp, &ent);
}
