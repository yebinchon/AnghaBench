
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int krb5_error_code ;
struct TYPE_3__ {int address; int addr_type; } ;
typedef TYPE_1__ krb5_address ;


 int KRB5_ADDRESS_INET ;
 int krb5_data_copy (int *,unsigned char*,int) ;
 int memcpy (unsigned char*,char const*,int) ;

__attribute__((used)) static krb5_error_code
ipv4_h_addr2addr (const char *addr,
    krb5_address *a)
{
    unsigned char buf[4];

    a->addr_type = KRB5_ADDRESS_INET;
    memcpy(buf, addr, 4);
    return krb5_data_copy(&a->address, buf, 4);
}
