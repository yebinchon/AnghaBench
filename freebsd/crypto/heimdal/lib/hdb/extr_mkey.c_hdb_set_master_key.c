
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int krb5_keyblock ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int hdb_master_key ;
struct TYPE_7__ {int hdb_master_key_set; int hdb_master_key; } ;
struct TYPE_6__ {int data; } ;
struct TYPE_5__ {TYPE_2__ keyvalue; } ;
typedef TYPE_3__ HDB ;


 int des_set_random_generator_seed (int ) ;
 scalar_t__ hdb_process_master_key (int ,int ,int *,int ,int *) ;

krb5_error_code
hdb_set_master_key (krb5_context context,
      HDB *db,
      krb5_keyblock *key)
{
    krb5_error_code ret;
    hdb_master_key mkey;

    ret = hdb_process_master_key(context, 0, key, 0, &mkey);
    if (ret)
 return ret;
    db->hdb_master_key = mkey;



    db->hdb_master_key_set = 1;
    return 0;
}
