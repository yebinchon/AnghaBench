
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_4__ {char* hits; int idx; int flagstr; int mask; int addr; } ;
typedef TYPE_1__ reslist_row ;
typedef int addrmaskstr ;
typedef int FILE ;


 int RESLIST_FIELDS ;
 int ZERO (TYPE_1__) ;
 int fprintf (int *,char*,char*,char*,int ) ;
 int snprintf (char*,int,char*,char*,...) ;
 int sockaddr_masktoprefixlen (int *) ;
 char* stoa (int *) ;

__attribute__((used)) static void
another_reslist_field(
 int * pfields,
 reslist_row * prow,
 FILE * fp
 )
{
 char addrmaskstr[128];
 int prefix;
 u_int idx;

 (*pfields)++;

 if (RESLIST_FIELDS > *pfields)
  return;

 prefix = sockaddr_masktoprefixlen(&prow->mask);
 if (prefix >= 0)
  snprintf(addrmaskstr, sizeof(addrmaskstr), "%s/%d",
    stoa(&prow->addr), prefix);
 else
  snprintf(addrmaskstr, sizeof(addrmaskstr), "%s %s",
    stoa(&prow->addr), stoa(&prow->mask));






 fprintf(fp,
  "%10lu %s\n"
  "           %s\n",
  prow->hits, addrmaskstr, prow->flagstr);
 idx = prow->idx;
 ZERO(*prow);
 prow->idx = idx;
}
