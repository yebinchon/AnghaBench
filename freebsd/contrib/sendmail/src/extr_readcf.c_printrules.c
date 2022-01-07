
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rewrite {int r_rhs; int r_lhs; struct rewrite* r_next; } ;


 struct rewrite** RewriteRules ;
 int printav (int ,int ) ;
 int sm_debug_file () ;
 int sm_dprintf (char*,...) ;

void
printrules()
{
 register struct rewrite *rwp;
 register int ruleset;

 for (ruleset = 0; ruleset < 10; ruleset++)
 {
  if (RewriteRules[ruleset] == ((void*)0))
   continue;
  sm_dprintf("\n----Rule Set %d:", ruleset);

  for (rwp = RewriteRules[ruleset]; rwp != ((void*)0); rwp = rwp->r_next)
  {
   sm_dprintf("\nLHS:");
   printav(sm_debug_file(), rwp->r_lhs);
   sm_dprintf("RHS:");
   printav(sm_debug_file(), rwp->r_rhs);
  }
 }
}
