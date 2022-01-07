
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct pfr_tstats {int pfrts_flags; int pfrts_cnt; int* pfrts_refcnt; scalar_t__** pfrts_bytes; scalar_t__** pfrts_packets; scalar_t__ pfrts_match; scalar_t__ pfrts_nomatch; int pfrts_t; int pfrts_tzero; } ;


 int PFR_DIR_MAX ;
 int PFR_OP_TABLE_MAX ;
 size_t PFR_REFCNT_ANCHOR ;
 size_t PFR_REFCNT_RULE ;
 int PFR_TFLAG_ACTIVE ;
 char* ctime (int *) ;
 int print_table (int *,int,int) ;
 int printf (char*,...) ;
 char*** stats_text ;

void
print_tstats(struct pfr_tstats *ts, int debug)
{
 time_t time = ts->pfrts_tzero;
 int dir, op;

 if (!debug && !(ts->pfrts_flags & PFR_TFLAG_ACTIVE))
  return;
 print_table(&ts->pfrts_t, 1, debug);
 printf("\tAddresses:   %d\n", ts->pfrts_cnt);
 printf("\tCleared:     %s", ctime(&time));
 printf("\tReferences:  [ Anchors: %-18d Rules: %-18d ]\n",
     ts->pfrts_refcnt[PFR_REFCNT_ANCHOR],
     ts->pfrts_refcnt[PFR_REFCNT_RULE]);
 printf("\tEvaluations: [ NoMatch: %-18llu Match: %-18llu ]\n",
     (unsigned long long)ts->pfrts_nomatch,
     (unsigned long long)ts->pfrts_match);
 for (dir = 0; dir < PFR_DIR_MAX; dir++)
  for (op = 0; op < PFR_OP_TABLE_MAX; op++)
   printf("\t%-12s [ Packets: %-18llu Bytes: %-18llu ]\n",
       stats_text[dir][op],
       (unsigned long long)ts->pfrts_packets[dir][op],
       (unsigned long long)ts->pfrts_bytes[dir][op]);
}
