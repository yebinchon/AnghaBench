
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mgmt_header_t {int sa; int da; int bssid; } ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int etheraddr_string (int *,int ) ;

__attribute__((used)) static void
mgmt_header_print(netdissect_options *ndo, const u_char *p)
{
 const struct mgmt_header_t *hp = (const struct mgmt_header_t *) p;

 ND_PRINT((ndo, "BSSID:%s DA:%s SA:%s ",
     etheraddr_string(ndo, (hp)->bssid), etheraddr_string(ndo, (hp)->da),
     etheraddr_string(ndo, (hp)->sa)));
}
