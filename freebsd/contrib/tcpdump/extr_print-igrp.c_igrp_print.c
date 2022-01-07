
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int u_char ;
struct igrprte {int dummy; } ;
struct igrphdr {int ig_as; int ig_ed; int ig_vop; int ig_nx; int ig_ns; int ig_ni; } ;
typedef int netdissect_options ;


 scalar_t__ EXTRACT_16BITS (int *) ;
 int IGRP_OP (int ) ;
 scalar_t__ IGRP_RTE_SIZE ;
 int IGRP_V (int ) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (struct igrphdr const) ;
 int ND_TCHECK2 (int const,scalar_t__) ;
 int igrp_entry_print (int *,struct igrprte const*,int,int) ;
 int op2str ;
 int tok2str (int ,char*,int ) ;

void
igrp_print(netdissect_options *ndo, register const u_char *bp, u_int length)
{
 register const struct igrphdr *hdr;
 register const u_char *cp;
 u_int nint, nsys, next;

 hdr = (const struct igrphdr *)bp;
 cp = (const u_char *)(hdr + 1);
 ND_PRINT((ndo, "igrp:"));


 ND_TCHECK(*hdr);
 nint = EXTRACT_16BITS(&hdr->ig_ni);
 nsys = EXTRACT_16BITS(&hdr->ig_ns);
 next = EXTRACT_16BITS(&hdr->ig_nx);

 ND_PRINT((ndo, " %s V%d edit=%d AS=%d (%d/%d/%d)",
     tok2str(op2str, "op-#%d", IGRP_OP(hdr->ig_vop)),
     IGRP_V(hdr->ig_vop),
     hdr->ig_ed,
     EXTRACT_16BITS(&hdr->ig_as),
     nint,
     nsys,
     next));

 length -= sizeof(*hdr);
 while (length >= IGRP_RTE_SIZE) {
  if (nint > 0) {
   ND_TCHECK2(*cp, IGRP_RTE_SIZE);
   igrp_entry_print(ndo, (const struct igrprte *)cp, 1, 0);
   --nint;
  } else if (nsys > 0) {
   ND_TCHECK2(*cp, IGRP_RTE_SIZE);
   igrp_entry_print(ndo, (const struct igrprte *)cp, 0, 0);
   --nsys;
  } else if (next > 0) {
   ND_TCHECK2(*cp, IGRP_RTE_SIZE);
   igrp_entry_print(ndo, (const struct igrprte *)cp, 0, 1);
   --next;
  } else {
   ND_PRINT((ndo, " [extra bytes %d]", length));
   break;
  }
  cp += IGRP_RTE_SIZE;
  length -= IGRP_RTE_SIZE;
 }
 if (nint == 0 && nsys == 0 && next == 0)
  return;
trunc:
 ND_PRINT((ndo, " [|igrp]"));
}
