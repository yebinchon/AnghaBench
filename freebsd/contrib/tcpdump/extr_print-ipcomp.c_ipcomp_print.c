
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_char ;
struct ipcomp {int comp_cpi; } ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int *) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (struct ipcomp const) ;

void
ipcomp_print(netdissect_options *ndo, register const u_char *bp)
{
 register const struct ipcomp *ipcomp;
 uint16_t cpi;

 ipcomp = (const struct ipcomp *)bp;
 ND_TCHECK(*ipcomp);
 cpi = EXTRACT_16BITS(&ipcomp->comp_cpi);

 ND_PRINT((ndo, "IPComp(cpi=0x%04x)", cpi));
 return;

trunc:
 ND_PRINT((ndo, "[|IPCOMP]"));
 return;
}
