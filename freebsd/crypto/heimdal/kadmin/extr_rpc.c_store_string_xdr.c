
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_storage ;
struct TYPE_4__ {scalar_t__ length; int data; } ;
typedef TYPE_1__ krb5_data ;


 int krb5_data_zero (TYPE_1__*) ;
 int rk_UNCONST (char const*) ;
 int store_data_xdr (int *,TYPE_1__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int
store_string_xdr(krb5_storage *sp, const char *str)
{
    krb5_data c;
    if (str) {
 c.data = rk_UNCONST(str);
 c.length = strlen(str) + 1;
    } else
 krb5_data_zero(&c);

    return store_data_xdr(sp, c);
}
