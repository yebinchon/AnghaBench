
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct _krb5_key_data {int key; } ;
typedef int krb5_error_code ;
typedef TYPE_3__* krb5_crypto ;
typedef int krb5_context ;
typedef int constant ;
struct TYPE_7__ {int key; } ;
struct TYPE_8__ {int num_key_usage; int et; TYPE_2__ key; TYPE_1__* key_usage; } ;
struct TYPE_6__ {unsigned int usage; struct _krb5_key_data key; } ;


 int ENOMEM ;
 int N_ (char*,char*) ;
 int _krb5_derive_key (int ,int ,struct _krb5_key_data*,unsigned char*,int) ;
 int _krb5_put_int (unsigned char*,unsigned int,int) ;
 struct _krb5_key_data* _new_derived_key (TYPE_3__*,unsigned int) ;
 int krb5_copy_keyblock (int ,int ,int *) ;
 int krb5_set_error_message (int ,int ,int ) ;

__attribute__((used)) static krb5_error_code
_get_derived_key(krb5_context context,
   krb5_crypto crypto,
   unsigned usage,
   struct _krb5_key_data **key)
{
    int i;
    struct _krb5_key_data *d;
    unsigned char constant[5];

    for(i = 0; i < crypto->num_key_usage; i++)
 if(crypto->key_usage[i].usage == usage) {
     *key = &crypto->key_usage[i].key;
     return 0;
 }
    d = _new_derived_key(crypto, usage);
    if(d == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM, N_("malloc: out of memory", ""));
 return ENOMEM;
    }
    krb5_copy_keyblock(context, crypto->key.key, &d->key);
    _krb5_put_int(constant, usage, 5);
    _krb5_derive_key(context, crypto->et, d, constant, sizeof(constant));
    *key = d;
    return 0;
}
