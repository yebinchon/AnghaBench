
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct roff_man {int flags; TYPE_1__* last; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {scalar_t__ type; int tok; } ;
struct TYPE_4__ {int tok; TYPE_2__* parent; } ;


 int MAN_BLINE ;
 int MAN_ELINE ;
 int MAN_ESCOPED ;
 scalar_t__ ROFFT_ROOT ;
 int ROFF_NONOFILL ;
 int * man_hasc (char*) ;
 TYPE_3__* man_macro (int ) ;
 int man_unscope (struct roff_man*,TYPE_2__*) ;
 int roff_body_alloc (struct roff_man*,int,int,int ) ;

void
man_descope(struct roff_man *man, int line, int offs, char *start)
{


 if (start != ((void*)0) && man_hasc(start) != ((void*)0))
  return;







 if (man->flags & MAN_ELINE) {
  while (man->last->parent->type != ROFFT_ROOT &&
      man_macro(man->last->parent->tok)->flags & MAN_ESCOPED)
   man_unscope(man, man->last->parent);
  man->flags &= ~MAN_ELINE;
 }
 if ( ! (man->flags & MAN_BLINE))
  return;
 man_unscope(man, man->last->parent);
 roff_body_alloc(man, line, offs, man->last->tok);
 man->flags &= ~(MAN_BLINE | ROFF_NONOFILL);
}
