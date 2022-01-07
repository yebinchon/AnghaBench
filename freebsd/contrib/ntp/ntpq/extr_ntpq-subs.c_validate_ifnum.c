
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {int ifnum; } ;
typedef TYPE_1__ ifstats_row ;
typedef int FILE ;


 int IFSTATS_FIELDS ;
 int exit (int) ;
 int fprintf (int ,char*,int,int,...) ;
 int stderr ;

__attribute__((used)) static void
validate_ifnum(
 FILE * fp,
 u_int ifnum,
 int * pfields,
 ifstats_row * prow
 )
{
 if (prow->ifnum == ifnum)
  return;
 if (prow->ifnum + 1 <= ifnum) {
  if (*pfields < IFSTATS_FIELDS)
   fprintf(fp, "Warning: incomplete row with %d (of %d) fields\n",
    *pfields, IFSTATS_FIELDS);
  *pfields = 0;
  prow->ifnum = ifnum;
  return;
 }
 fprintf(stderr,
  "received if index %u, have %d of %d fields for index %u, aborting.\n",
  ifnum, *pfields, IFSTATS_FIELDS, prow->ifnum);
 exit(1);
}
