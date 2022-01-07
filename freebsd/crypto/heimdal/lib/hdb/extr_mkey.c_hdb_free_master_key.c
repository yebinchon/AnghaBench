
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdb_master_key_data {struct hdb_master_key_data* next; scalar_t__ crypto; int keytab; } ;
typedef int krb5_context ;
typedef struct hdb_master_key_data* hdb_master_key ;


 int free (struct hdb_master_key_data*) ;
 int krb5_crypto_destroy (int ,scalar_t__) ;
 int krb5_kt_free_entry (int ,int *) ;

void
hdb_free_master_key(krb5_context context, hdb_master_key mkey)
{
    struct hdb_master_key_data *ptr;
    while(mkey) {
 krb5_kt_free_entry(context, &mkey->keytab);
 if (mkey->crypto)
     krb5_crypto_destroy(context, mkey->crypto);
 ptr = mkey;
 mkey = mkey->next;
 free(ptr);
    }
}
