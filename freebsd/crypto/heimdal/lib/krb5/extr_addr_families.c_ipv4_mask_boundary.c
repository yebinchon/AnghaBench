
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef int krb5_context ;
struct TYPE_8__ {int length; int data; } ;
struct TYPE_7__ {TYPE_3__ address; void* addr_type; } ;
typedef TYPE_1__ krb5_address ;


 void* KRB5_ADDRESS_INET ;
 int KRB5_PROG_ATYPE_NOSUPP ;
 int N_ (char*,char*) ;
 int _krb5_get_int (int ,unsigned long*,int ) ;
 int _krb5_put_int (int ,int,int ) ;
 scalar_t__ krb5_data_alloc (TYPE_3__*,int) ;
 int krb5_free_address (int ,TYPE_1__*) ;
 int krb5_set_error_message (int ,int,int ,unsigned long) ;

__attribute__((used)) static int
ipv4_mask_boundary(krb5_context context, const krb5_address *inaddr,
     unsigned long len, krb5_address *low, krb5_address *high)
{
    unsigned long ia;
    uint32_t l, h, m = 0xffffffff;

    if (len > 32) {
 krb5_set_error_message(context, KRB5_PROG_ATYPE_NOSUPP,
          N_("IPv4 prefix too large (%ld)", "len"), len);
 return KRB5_PROG_ATYPE_NOSUPP;
    }
    m = m << (32 - len);

    _krb5_get_int(inaddr->address.data, &ia, inaddr->address.length);

    l = ia & m;
    h = l | ~m;

    low->addr_type = KRB5_ADDRESS_INET;
    if(krb5_data_alloc(&low->address, 4) != 0)
 return -1;
    _krb5_put_int(low->address.data, l, low->address.length);

    high->addr_type = KRB5_ADDRESS_INET;
    if(krb5_data_alloc(&high->address, 4) != 0) {
 krb5_free_address(context, low);
 return -1;
    }
    _krb5_put_int(high->address.data, h, high->address.length);

    return 0;
}
