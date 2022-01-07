
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_2__ {scalar_t__ pfra_fback; } ;
struct pfr_astats {scalar_t__** pfras_bytes; scalar_t__** pfras_packets; TYPE_1__ pfras_a; int pfras_tzero; } ;


 int PFR_DIR_MAX ;
 scalar_t__ PFR_FB_NOCOUNT ;
 int PFR_OP_ADDR_MAX ;
 char* ctime (int *) ;
 int print_addrx (TYPE_1__*,int *,int) ;
 int printf (char*,char*,...) ;
 char*** stats_text ;

void
print_astats(struct pfr_astats *as, int dns)
{
 time_t time = as->pfras_tzero;
 int dir, op;

 print_addrx(&as->pfras_a, ((void*)0), dns);
 printf("\tCleared:     %s", ctime(&time));
  if (as->pfras_a.pfra_fback == PFR_FB_NOCOUNT)
  return;
 for (dir = 0; dir < PFR_DIR_MAX; dir++)
  for (op = 0; op < PFR_OP_ADDR_MAX; op++)
   printf("\t%-12s [ Packets: %-18llu Bytes: %-18llu ]\n",
       stats_text[dir][op],
       (unsigned long long)as->pfras_packets[dir][op],
       (unsigned long long)as->pfras_bytes[dir][op]);
}
