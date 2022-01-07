
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdproc {int md_ldt_sd; } ;


 int GSEL (int ,int ) ;
 int GUSERLDT_SEL ;
 int * PCPU_GET (int ) ;
 int SEL_KPL ;
 int ldt ;
 int lldt (int ) ;

__attribute__((used)) static void
set_user_ldt(struct mdproc *mdp)
{

 *PCPU_GET(ldt) = mdp->md_ldt_sd;
 lldt(GSEL(GUSERLDT_SEL, SEL_KPL));
}
