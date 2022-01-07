
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int u_char ;
struct lladdr_info {void* addr_string; scalar_t__ addr; } ;
struct fddi_header {int fddi_fc; } ;
struct ether_header {int dummy; } ;
struct TYPE_7__ {int ndo_suppress_default_print; scalar_t__ ndo_eflag; } ;
typedef TYPE_1__ netdissect_options ;


 scalar_t__ EDST (struct ether_header*) ;
 scalar_t__ ESRC (struct ether_header*) ;
 int FDDIFC_CLFF ;
 int FDDIFC_LLC_ASYNC ;
 int FDDIFC_SMT ;
 scalar_t__ FDDI_HDRLEN ;
 int ND_DEFAULTPRINT (int const*,scalar_t__) ;
 int ND_PRINT (TYPE_1__*) ;
 void* etheraddr_string ;
 int extract_fddi_addrs (struct fddi_header const*,char*,char*) ;
 int fddi_hdr_print (TYPE_1__*,struct fddi_header const*,scalar_t__,scalar_t__,scalar_t__) ;
 int fddi_smt_print (TYPE_1__*,int const*,scalar_t__) ;
 int llc_print (TYPE_1__*,int const*,scalar_t__,scalar_t__,struct lladdr_info*,struct lladdr_info*) ;

u_int
fddi_print(netdissect_options *ndo, const u_char *p, u_int length, u_int caplen)
{
 const struct fddi_header *fddip = (const struct fddi_header *)p;
 struct ether_header ehdr;
 struct lladdr_info src, dst;
 int llc_hdrlen;

 if (caplen < FDDI_HDRLEN) {
  ND_PRINT((ndo, "[|fddi]"));
  return (caplen);
 }




 extract_fddi_addrs(fddip, (char *)ESRC(&ehdr), (char *)EDST(&ehdr));

 if (ndo->ndo_eflag)
  fddi_hdr_print(ndo, fddip, length, ESRC(&ehdr), EDST(&ehdr));

 src.addr = ESRC(&ehdr);
 src.addr_string = etheraddr_string;
 dst.addr = EDST(&ehdr);
 dst.addr_string = etheraddr_string;


 length -= FDDI_HDRLEN;
 p += FDDI_HDRLEN;
 caplen -= FDDI_HDRLEN;


 if ((fddip->fddi_fc & FDDIFC_CLFF) == FDDIFC_LLC_ASYNC) {

  llc_hdrlen = llc_print(ndo, p, length, caplen, &src, &dst);
  if (llc_hdrlen < 0) {




   if (!ndo->ndo_suppress_default_print)
    ND_DEFAULTPRINT(p, caplen);
   llc_hdrlen = -llc_hdrlen;
  }
 } else if ((fddip->fddi_fc & FDDIFC_CLFF) == FDDIFC_SMT) {
  fddi_smt_print(ndo, p, caplen);
  llc_hdrlen = 0;
 } else {

  if (!ndo->ndo_eflag)
   fddi_hdr_print(ndo, fddip, length + FDDI_HDRLEN, ESRC(&ehdr),
       EDST(&ehdr));
  if (!ndo->ndo_suppress_default_print)
   ND_DEFAULTPRINT(p, caplen);
  llc_hdrlen = 0;
 }
 return (FDDI_HDRLEN + llc_hdrlen);
}
