
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff_man {int roff; int flags; TYPE_1__* last; } ;
struct TYPE_2__ {scalar_t__ type; int line; } ;


 int MAN_NEWLINE ;
 scalar_t__ ROFFT_EQN ;
 int man_pmacro (struct roff_man*,int,char*,int) ;
 int man_ptext (struct roff_man*,int,char*,int) ;
 scalar_t__ roff_getcontrol (int ,char*,int*) ;

int
man_parseln(struct roff_man *man, int ln, char *buf, int offs)
{

 if (man->last->type != ROFFT_EQN || ln > man->last->line)
  man->flags |= MAN_NEWLINE;

 return roff_getcontrol(man->roff, buf, &offs) ?
     man_pmacro(man, ln, buf, offs) :
     man_ptext(man, ln, buf, offs);
}
