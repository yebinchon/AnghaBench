
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct pfi_kif {char* pfik_name; int pfik_flags; int pfik_rulerefs; scalar_t__*** pfik_bytes; scalar_t__*** pfik_packets; int pfik_tzero; } ;


 int PFI_IFLAG_SKIP ;
 int PF_OPT_VERBOSE ;
 int PF_OPT_VERBOSE2 ;
 char* ctime (int *) ;
 char**** istats_text ;
 int printf (char*,...) ;

void
print_iface(struct pfi_kif *p, int opts)
{
 time_t tzero = p->pfik_tzero;
 int i, af, dir, act;

 printf("%s", p->pfik_name);
 if (opts & PF_OPT_VERBOSE) {
  if (p->pfik_flags & PFI_IFLAG_SKIP)
   printf(" (skip)");
 }
 printf("\n");

 if (!(opts & PF_OPT_VERBOSE2))
  return;
 printf("\tCleared:     %s", ctime(&tzero));
 printf("\tReferences:  %-18d\n", p->pfik_rulerefs);
 for (i = 0; i < 8; i++) {
  af = (i>>2) & 1;
  dir = (i>>1) &1;
  act = i & 1;
  printf("\t%-12s [ Packets: %-18llu Bytes: %-18llu ]\n",
      istats_text[af][dir][act],
      (unsigned long long)p->pfik_packets[af][dir][act],
      (unsigned long long)p->pfik_bytes[af][dir][act]);
 }
}
