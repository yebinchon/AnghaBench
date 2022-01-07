
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ length; int data; } ;
struct TYPE_7__ {TYPE_1__ keyvalue; int keytype; } ;
typedef TYPE_2__ krb5_keyblock ;
typedef int krb5_error_code ;
struct TYPE_8__ {scalar_t__ length; int * data; int type; } ;
typedef TYPE_3__ gss_krb5_lucid_key_t ;


 int ENOMEM ;
 int * malloc (scalar_t__) ;
 int memcpy (int *,int ,scalar_t__) ;

__attribute__((used)) static krb5_error_code
set_key(krb5_keyblock *keyblock, gss_krb5_lucid_key_t *key)
{
    key->type = keyblock->keytype;
    key->length = keyblock->keyvalue.length;
    key->data = malloc(key->length);
    if (key->data == ((void*)0) && key->length != 0)
 return ENOMEM;
    memcpy(key->data, keyblock->keyvalue.data, key->length);
    return 0;
}
