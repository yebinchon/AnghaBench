
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct fkt_data {int filename; } ;
typedef int krb5_storage ;
typedef TYPE_3__* krb5_principal ;
typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int int32_t ;
typedef scalar_t__ int16_t ;
struct TYPE_7__ {size_t len; int * val; } ;
struct TYPE_8__ {int name_type; TYPE_1__ name_string; } ;
struct TYPE_9__ {TYPE_2__ name; int realm; } ;


 int ALLOC (TYPE_3__*,int) ;
 int ENOMEM ;
 int KRB5_KT_END ;
 int KRB5_NT_UNKNOWN ;
 int KRB5_STORAGE_PRINCIPAL_NO_NAME_TYPE ;
 int KRB5_STORAGE_PRINCIPAL_WRONG_NUM_COMPONENTS ;
 int N_ (char*,char*) ;
 int * calloc (scalar_t__,int) ;
 int krb5_free_principal (int ,TYPE_3__*) ;
 int krb5_kt_ret_string (int ,int *,int *) ;
 int krb5_ret_int16 (int *,scalar_t__*) ;
 int krb5_ret_int32 (int *,int *) ;
 int krb5_set_error_message (int ,int,int ,...) ;
 scalar_t__ krb5_storage_is_flags (int *,int ) ;

__attribute__((used)) static krb5_error_code
krb5_kt_ret_principal(krb5_context context,
        struct fkt_data *fkt,
        krb5_storage *sp,
        krb5_principal *princ)
{
    size_t i;
    int ret;
    krb5_principal p;
    int16_t len;

    ALLOC(p, 1);
    if(p == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM,
          N_("malloc: out of memory", ""));
 return ENOMEM;
    }

    ret = krb5_ret_int16(sp, &len);
    if(ret) {
 krb5_set_error_message(context, ret,
          N_("Failed decoding length of "
      "keytab principal in keytab file %s", ""),
          fkt->filename);
 goto out;
    }
    if(krb5_storage_is_flags(sp, KRB5_STORAGE_PRINCIPAL_WRONG_NUM_COMPONENTS))
 len--;
    if (len < 0) {
 ret = KRB5_KT_END;
 krb5_set_error_message(context, ret,
          N_("Keytab principal contains "
      "invalid length in keytab %s", ""),
          fkt->filename);
 goto out;
    }
    ret = krb5_kt_ret_string(context, sp, &p->realm);
    if(ret) {
 krb5_set_error_message(context, ret,
          N_("Can't read realm from keytab: %s", ""),
          fkt->filename);
 goto out;
    }
    p->name.name_string.val = calloc(len, sizeof(*p->name.name_string.val));
    if(p->name.name_string.val == ((void*)0)) {
 ret = ENOMEM;
 krb5_set_error_message(context, ret, N_("malloc: out of memory", ""));
 goto out;
    }
    p->name.name_string.len = len;
    for(i = 0; i < p->name.name_string.len; i++){
 ret = krb5_kt_ret_string(context, sp, p->name.name_string.val + i);
 if(ret) {
     krb5_set_error_message(context, ret,
       N_("Can't read principal from "
          "keytab: %s", ""),
       fkt->filename);
     goto out;
 }
    }
    if (krb5_storage_is_flags(sp, KRB5_STORAGE_PRINCIPAL_NO_NAME_TYPE))
 p->name.name_type = KRB5_NT_UNKNOWN;
    else {
 int32_t tmp32;
 ret = krb5_ret_int32(sp, &tmp32);
 p->name.name_type = tmp32;
 if (ret) {
     krb5_set_error_message(context, ret,
       N_("Can't read name-type from "
          "keytab: %s", ""),
       fkt->filename);
     goto out;
 }
    }
    *princ = p;
    return 0;
out:
    krb5_free_principal(context, p);
    return ret;
}
