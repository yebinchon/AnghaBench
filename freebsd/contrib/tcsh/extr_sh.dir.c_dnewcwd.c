
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct directory {int di_name; TYPE_1__* di_next; struct directory* di_prev; } ;
struct TYPE_2__ {struct directory* di_prev; } ;


 int DIR_PRINT ;
 int STRdunique ;
 int STRpushdsilent ;
 scalar_t__ Strcmp (int ,int ) ;
 scalar_t__ adrof (int ) ;
 scalar_t__ bequiet ;
 int cwd_cmd () ;
 struct directory* dcwd ;
 int dfree (struct directory*) ;
 int dgetstack () ;
 struct directory dhead ;
 int dset (int ) ;
 int printd ;
 int printdirs (int) ;

__attribute__((used)) static void
dnewcwd(struct directory *dp, int dflag)
{
    int print;

    if (adrof(STRdunique)) {
 struct directory *dn;

 for (dn = dhead.di_prev; dn != &dhead; dn = dn->di_prev)
     if (dn != dp && Strcmp(dn->di_name, dp->di_name) == 0) {
  dn->di_next->di_prev = dn->di_prev;
  dn->di_prev->di_next = dn->di_next;
  dfree(dn);
  break;
     }
    }
    dcwd = dp;
    dset(dcwd->di_name);
    dgetstack();
    print = printd;
    if (adrof(STRpushdsilent))
 print = 0;
    if (dflag & DIR_PRINT)
 print = 1;
    if (bequiet)
 print = 0;
    if (print)
 printdirs(dflag);
    cwd_cmd();
}
