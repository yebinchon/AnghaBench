
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _krb5_key_data {int * schedule; int key; } ;
struct _krb5_encryption_type {int dummy; } ;
typedef int krb5_context ;


 int free_key_schedule (int ,struct _krb5_key_data*,struct _krb5_encryption_type*) ;
 int krb5_free_keyblock (int ,int ) ;

void
_krb5_free_key_data(krb5_context context, struct _krb5_key_data *key,
       struct _krb5_encryption_type *et)
{
    krb5_free_keyblock(context, key->key);
    if(key->schedule) {
 free_key_schedule(context, key, et);
 key->schedule = ((void*)0);
    }
}
