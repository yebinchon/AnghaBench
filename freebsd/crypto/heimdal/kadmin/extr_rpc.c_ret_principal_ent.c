
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {int tl_data_type; struct TYPE_9__* tl_data_next; int tl_data_contents; int tl_data_length; } ;
typedef TYPE_2__ krb5_tl_data ;
typedef int krb5_storage ;
struct TYPE_10__ {int data; int length; } ;
typedef TYPE_3__ krb5_data ;
typedef int krb5_context ;
struct TYPE_11__ {int princ_expire_time; int pw_expiration; int last_pwd_change; int max_life; int mod_date; int attributes; int kvno; int mkvno; int aux_attributes; int max_renewable_life; int last_success; int last_failed; int fail_auth_count; int n_key_data; int n_tl_data; TYPE_1__* key_data; TYPE_2__* tl_data; int policy; int mod_name; int principal; } ;
typedef TYPE_4__ kadm5_principal_ent_rec ;
struct TYPE_8__ {int* key_data_type; } ;


 int CHECK (int ) ;
 int INSIST (int) ;
 void* calloc (int,int) ;
 int krb5_ret_uint32 (int *,int*) ;
 int memset (TYPE_4__*,int ,int) ;
 int ret_data_xdr (int *,TYPE_3__*) ;
 int ret_principal_xdr (int ,int *,int *) ;
 int ret_string_xdr (int *,int *) ;

__attribute__((used)) static int
ret_principal_ent(krb5_context contextp,
    krb5_storage *sp,
    kadm5_principal_ent_rec *ent)
{
    uint32_t flag, num;
    size_t i;

    memset(ent, 0, sizeof(*ent));

    CHECK(ret_principal_xdr(contextp, sp, &ent->principal));
    CHECK(krb5_ret_uint32(sp, &flag));
    ent->princ_expire_time = flag;
    CHECK(krb5_ret_uint32(sp, &flag));
    ent->pw_expiration = flag;
    CHECK(krb5_ret_uint32(sp, &flag));
    ent->last_pwd_change = flag;
    CHECK(krb5_ret_uint32(sp, &flag));
    ent->max_life = flag;
    CHECK(krb5_ret_uint32(sp, &flag));
    if (flag == 0)
 ret_principal_xdr(contextp, sp, &ent->mod_name);
    CHECK(krb5_ret_uint32(sp, &flag));
    ent->mod_date = flag;
    CHECK(krb5_ret_uint32(sp, &flag));
    ent->attributes = flag;
    CHECK(krb5_ret_uint32(sp, &flag));
    ent->kvno = flag;
    CHECK(krb5_ret_uint32(sp, &flag));
    ent->mkvno = flag;
    CHECK(ret_string_xdr(sp, &ent->policy));
    CHECK(krb5_ret_uint32(sp, &flag));
    ent->aux_attributes = flag;
    CHECK(krb5_ret_uint32(sp, &flag));
    ent->max_renewable_life = flag;
    CHECK(krb5_ret_uint32(sp, &flag));
    ent->last_success = flag;
    CHECK(krb5_ret_uint32(sp, &flag));
    ent->last_failed = flag;
    CHECK(krb5_ret_uint32(sp, &flag));
    ent->fail_auth_count = flag;
    CHECK(krb5_ret_uint32(sp, &flag));
    ent->n_key_data = flag;
    CHECK(krb5_ret_uint32(sp, &flag));
    ent->n_tl_data = flag;
    CHECK(krb5_ret_uint32(sp, &flag));
    if (flag == 0) {
 krb5_tl_data **tp = &ent->tl_data;
 size_t count = 0;

 while(1) {
     krb5_data c;
     CHECK(krb5_ret_uint32(sp, &flag));
     if (flag)
  break;
     *tp = calloc(1, sizeof(**tp));
     INSIST(*tp != ((void*)0));
     CHECK(krb5_ret_uint32(sp, &flag));
     (*tp)->tl_data_type = flag;
     CHECK(ret_data_xdr(sp, &c));
     (*tp)->tl_data_length = c.length;
     (*tp)->tl_data_contents = c.data;
     tp = &(*tp)->tl_data_next;

     count++;
 }
 INSIST((size_t)ent->n_tl_data == count);
    } else {
 INSIST(ent->n_tl_data == 0);
    }

    CHECK(krb5_ret_uint32(sp, &num));
    INSIST(num == (uint32_t)ent->n_key_data);

    ent->key_data = calloc(num, sizeof(ent->key_data[0]));
    INSIST(ent->key_data != ((void*)0));

    for (i = 0; i < num; i++) {
 CHECK(krb5_ret_uint32(sp, &flag));
 INSIST(flag > 1);
 CHECK(krb5_ret_uint32(sp, &flag));
 ent->kvno = flag;
 CHECK(krb5_ret_uint32(sp, &flag));
 ent->key_data[i].key_data_type[0] = flag;
 CHECK(krb5_ret_uint32(sp, &flag));
 ent->key_data[i].key_data_type[1] = flag;
    }

    return 0;
}
