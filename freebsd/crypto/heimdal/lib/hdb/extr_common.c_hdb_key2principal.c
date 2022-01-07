
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int krb5_principal ;
struct TYPE_3__ {int length; int data; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_context ;


 int decode_Principal (int ,int ,int ,int *) ;

int
hdb_key2principal(krb5_context context, krb5_data *key, krb5_principal p)
{
    return decode_Principal(key->data, key->length, p, ((void*)0));
}
