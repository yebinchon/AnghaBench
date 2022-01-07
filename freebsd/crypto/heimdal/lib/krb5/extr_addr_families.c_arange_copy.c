
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct arange {int low; int high; } ;
typedef int krb5_error_code ;
typedef int krb5_context ;
struct TYPE_7__ {struct arange* data; } ;
struct TYPE_6__ {TYPE_2__ address; int addr_type; } ;
typedef TYPE_1__ krb5_address ;


 int KRB5_ADDRESS_ARANGE ;
 int krb5_copy_address (int ,int *,int *) ;
 int krb5_data_alloc (TYPE_2__*,int) ;
 int krb5_data_free (TYPE_2__*) ;
 int krb5_free_address (int ,int *) ;

__attribute__((used)) static int
arange_copy (krb5_context context, const krb5_address *inaddr,
      krb5_address *outaddr)
{
    krb5_error_code ret;
    struct arange *i, *o;

    outaddr->addr_type = KRB5_ADDRESS_ARANGE;
    ret = krb5_data_alloc(&outaddr->address, sizeof(*o));
    if(ret)
 return ret;
    i = inaddr->address.data;
    o = outaddr->address.data;
    ret = krb5_copy_address(context, &i->low, &o->low);
    if(ret) {
 krb5_data_free(&outaddr->address);
 return ret;
    }
    ret = krb5_copy_address(context, &i->high, &o->high);
    if(ret) {
 krb5_free_address(context, &o->low);
 krb5_data_free(&outaddr->address);
 return ret;
    }
    return 0;
}
