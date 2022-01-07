
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_storage ;
struct TYPE_4__ {int length; int data; } ;
typedef TYPE_1__ krb5_data ;


 int CHECK (int ) ;
 int INSIST (int ) ;
 int krb5_data_free (TYPE_1__*) ;
 char* malloc (int) ;
 int memcpy (char*,int ,int) ;
 int ret_data_xdr (int *,TYPE_1__*) ;

__attribute__((used)) static int
ret_string_xdr(krb5_storage *sp, char **str)
{
    krb5_data c;
    *str = ((void*)0);
    CHECK(ret_data_xdr(sp, &c));
    if (c.length) {
 *str = malloc(c.length + 1);
 INSIST(*str != ((void*)0));
 memcpy(*str, c.data, c.length);
 (*str)[c.length] = '\0';
    }
    krb5_data_free(&c);
    return 0;
}
