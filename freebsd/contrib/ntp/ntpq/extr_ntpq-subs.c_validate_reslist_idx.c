
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {int idx; } ;
typedef TYPE_1__ reslist_row ;
typedef int FILE ;


 int RESLIST_FIELDS ;
 int exit (int) ;
 int fprintf (int ,char*,int,int,...) ;
 int stderr ;

__attribute__((used)) static void
validate_reslist_idx(
 FILE * fp,
 u_int idx,
 int * pfields,
 reslist_row * prow
 )
{
 if (prow->idx == idx)
  return;
 if (prow->idx + 1 == idx) {
  if (*pfields < RESLIST_FIELDS)
   fprintf(fp, "Warning: incomplete row with %d (of %d) fields",
    *pfields, RESLIST_FIELDS);
  *pfields = 0;
  prow->idx = idx;
  return;
 }
 fprintf(stderr,
  "received reslist index %u, have %d of %d fields for index %u, aborting.\n",
  idx, *pfields, RESLIST_FIELDS, prow->idx);
 exit(1);
}
