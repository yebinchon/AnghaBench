
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int u_char ;
struct lladdr_info {void* addr_string; scalar_t__ addr; } ;
struct ipfc_header {int dummy; } ;
struct ether_header {int dummy; } ;
struct TYPE_6__ {int ndo_suppress_default_print; scalar_t__ ndo_eflag; } ;
typedef TYPE_1__ netdissect_options ;


 scalar_t__ EDST (struct ether_header*) ;
 scalar_t__ ESRC (struct ether_header*) ;
 scalar_t__ IPFC_HDRLEN ;
 int ND_DEFAULTPRINT (int const*,scalar_t__) ;
 int ND_PRINT (TYPE_1__*) ;
 void* etheraddr_string ;
 int extract_ipfc_addrs (struct ipfc_header const*,char*,char*) ;
 int ipfc_hdr_print (TYPE_1__*,struct ipfc_header const*,scalar_t__,scalar_t__,scalar_t__) ;
 int llc_print (TYPE_1__*,int const*,scalar_t__,scalar_t__,struct lladdr_info*,struct lladdr_info*) ;

__attribute__((used)) static u_int
ipfc_print(netdissect_options *ndo, const u_char *p, u_int length, u_int caplen)
{
 const struct ipfc_header *ipfcp = (const struct ipfc_header *)p;
 struct ether_header ehdr;
 struct lladdr_info src, dst;
 int llc_hdrlen;

 if (caplen < IPFC_HDRLEN) {
  ND_PRINT((ndo, "[|ipfc]"));
  return (caplen);
 }



 extract_ipfc_addrs(ipfcp, (char *)ESRC(&ehdr), (char *)EDST(&ehdr));

 if (ndo->ndo_eflag)
  ipfc_hdr_print(ndo, ipfcp, length, ESRC(&ehdr), EDST(&ehdr));

 src.addr = ESRC(&ehdr);
 src.addr_string = etheraddr_string;
 dst.addr = EDST(&ehdr);
 dst.addr_string = etheraddr_string;


 length -= IPFC_HDRLEN;
 p += IPFC_HDRLEN;
 caplen -= IPFC_HDRLEN;


 llc_hdrlen = llc_print(ndo, p, length, caplen, &src, &dst);
 if (llc_hdrlen < 0) {




  if (!ndo->ndo_suppress_default_print)
   ND_DEFAULTPRINT(p, caplen);
  llc_hdrlen = -llc_hdrlen;
 }
 return (IPFC_HDRLEN + llc_hdrlen);
}
