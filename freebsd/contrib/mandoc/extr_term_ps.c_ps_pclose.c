
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct termp {scalar_t__ type; TYPE_1__* ps; } ;
struct TYPE_2__ {int flags; scalar_t__ psrow; scalar_t__ lastrow; } ;


 int PS_INLINE ;
 scalar_t__ TERMTYPE_PS ;
 int ps_printf (struct termp*,char*) ;

__attribute__((used)) static void
ps_pclose(struct termp *p)
{







 if ( ! (PS_INLINE & p->ps->flags))
  return;

 if (TERMTYPE_PS != p->type)
  ps_printf(p, ") Tj\nET\n");
 else if (p->ps->psrow == p->ps->lastrow)
  ps_printf(p, ")c\n");
 else {
  ps_printf(p, ")s\n");
  p->ps->lastrow = p->ps->psrow;
 }

 p->ps->flags &= ~PS_INLINE;
}
