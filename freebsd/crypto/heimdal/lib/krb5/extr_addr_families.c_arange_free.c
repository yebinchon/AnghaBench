
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct arange {int high; int low; } ;
typedef int krb5_context ;
struct TYPE_5__ {struct arange* data; } ;
struct TYPE_4__ {TYPE_2__ address; } ;
typedef TYPE_1__ krb5_address ;


 int krb5_data_free (TYPE_2__*) ;
 int krb5_free_address (int ,int *) ;

__attribute__((used)) static int
arange_free (krb5_context context, krb5_address *addr)
{
    struct arange *a;
    a = addr->address.data;
    krb5_free_address(context, &a->low);
    krb5_free_address(context, &a->high);
    krb5_data_free(&addr->address);
    return 0;
}
