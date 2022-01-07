
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_context ;
struct TYPE_10__ {int* salttype; int * salt; int etype; } ;
struct TYPE_7__ {int keytype; } ;
struct TYPE_9__ {TYPE_2__* salt; TYPE_1__ key; } ;
struct TYPE_8__ {int type; int salt; } ;
typedef TYPE_3__ Key ;
typedef TYPE_4__ ETYPE_INFO_ENTRY ;


 int ALLOC (int*) ;
 int KRB5KRB_ERR_GENERIC ;
 int config ;
 int hdb_afs3_salt ;
 int hdb_pw_salt ;
 int kdc_log (int ,int ,int ,char*,int) ;
 int krb5_copy_data (int ,int *,int **) ;

__attribute__((used)) static krb5_error_code
make_etype_info_entry(krb5_context context, ETYPE_INFO_ENTRY *ent, Key *key)
{
    ent->etype = key->key.keytype;
    if(key->salt){
 ent->salttype = ((void*)0);

 krb5_copy_data(context, &key->salt->salt,
         &ent->salt);
    } else {





 ent->salttype = ((void*)0);
 ent->salt = ((void*)0);
    }
    return 0;
}
