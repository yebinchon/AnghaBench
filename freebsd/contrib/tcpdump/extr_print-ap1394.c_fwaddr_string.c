
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int netdissect_options ;


 int FIREWIRE_EUI64_LEN ;
 int LINKADDR_IEEE1394 ;
 char const* linkaddr_string (int *,int const*,int ,int ) ;

__attribute__((used)) static const char *
fwaddr_string(netdissect_options *ndo, const u_char *addr)
{
 return (linkaddr_string(ndo, addr, LINKADDR_IEEE1394, FIREWIRE_EUI64_LEN));
}
