
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct in_addr {int s_addr; } ;
typedef int krb5_context ;
struct TYPE_5__ {int length; int data; } ;
struct TYPE_4__ {TYPE_2__ address; int addr_type; } ;
typedef TYPE_1__ krb5_address ;


 int KRB5_ADDRESS_INET ;
 int _krb5_put_int (int ,int ,int ) ;
 scalar_t__ inet_aton (char const*,struct in_addr*) ;
 scalar_t__ krb5_data_alloc (TYPE_2__*,int) ;
 int ntohl (int ) ;
 char* strchr (char const*,char) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;

__attribute__((used)) static int
ipv4_parse_addr (krb5_context context, const char *address, krb5_address *addr)
{
    const char *p;
    struct in_addr a;

    p = strchr(address, ':');
    if(p) {
 p++;
 if(strncasecmp(address, "ip:", p - address) != 0 &&
    strncasecmp(address, "ip4:", p - address) != 0 &&
    strncasecmp(address, "ipv4:", p - address) != 0 &&
    strncasecmp(address, "inet:", p - address) != 0)
     return -1;
    } else
 p = address;
    if(inet_aton(p, &a) == 0)
 return -1;
    addr->addr_type = KRB5_ADDRESS_INET;
    if(krb5_data_alloc(&addr->address, 4) != 0)
 return -1;
    _krb5_put_int(addr->address.data, ntohl(a.s_addr), addr->address.length);
    return 0;
}
