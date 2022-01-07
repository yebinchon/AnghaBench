
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct termp {scalar_t__ type; TYPE_1__* ps; } ;
typedef enum termfont { ____Placeholder_termfont } termfont ;
struct TYPE_2__ {int lastf; int flags; int scale; } ;


 int PS_NEWPAGE ;
 int TERMFONT__MAX ;
 scalar_t__ TERMTYPE_PS ;
 int assert (int) ;
 int ps_printf (struct termp*,char*,int,...) ;

__attribute__((used)) static void
ps_setfont(struct termp *p, enum termfont f)
{

 assert(f < TERMFONT__MAX);
 p->ps->lastf = f;






 if (PS_NEWPAGE & p->ps->flags)
  return;

 if (TERMTYPE_PS == p->type)
  ps_printf(p, "f%d\n", (int)f);
 else
  ps_printf(p, "/F%d %zu Tf\n",
      (int)f, p->ps->scale);
}
