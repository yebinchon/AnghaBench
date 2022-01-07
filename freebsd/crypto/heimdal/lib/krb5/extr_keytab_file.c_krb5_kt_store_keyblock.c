
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct fkt_data {int filename; } ;
typedef int krb5_storage ;
struct TYPE_3__ {int keyvalue; int keytype; } ;
typedef TYPE_1__ krb5_keyblock ;
typedef int krb5_error_code ;
typedef int krb5_context ;


 int N_ (char*,char*) ;
 int krb5_kt_store_data (int ,int *,int ) ;
 int krb5_set_error_message (int ,int,int ,int ) ;
 int krb5_store_int16 (int *,int ) ;

__attribute__((used)) static krb5_error_code
krb5_kt_store_keyblock(krb5_context context,
         struct fkt_data *fkt,
         krb5_storage *sp,
         krb5_keyblock *p)
{
    int ret;

    ret = krb5_store_int16(sp, p->keytype);
    if(ret) {
 krb5_set_error_message(context, ret,
          N_("Cant store keyblock to file %s", ""),
          fkt->filename);
 return ret;
    }
    ret = krb5_kt_store_data(context, sp, p->keyvalue);
    if (ret)
 krb5_set_error_message(context, ret,
          N_("Cant store keyblock to file %s", ""),
          fkt->filename);
    return ret;
}
