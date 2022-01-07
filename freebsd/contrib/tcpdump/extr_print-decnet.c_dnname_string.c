
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct dn_naddr {int a_len; scalar_t__ a_addr; } ;
typedef int netdissect_options ;


 char* dnet_htoa (struct dn_naddr*) ;
 char const* dnnum_string (int *,int ) ;
 int memcpy (char*,char*,int) ;
 char const* strdup (char*) ;

const char *
dnname_string(netdissect_options *ndo, u_short dnaddr)
{
 return(dnnum_string(ndo, dnaddr));

}
