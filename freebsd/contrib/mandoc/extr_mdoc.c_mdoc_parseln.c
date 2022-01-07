
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff_man {int roff; int flags; TYPE_1__* last; } ;
struct TYPE_2__ {scalar_t__ type; int line; } ;


 int MDOC_NEWLINE ;
 int MDOC_SYNOPSIS ;
 scalar_t__ ROFFT_EQN ;
 int mdoc_pmacro (struct roff_man*,int,char*,int) ;
 int mdoc_ptext (struct roff_man*,int,char*,int) ;
 scalar_t__ roff_getcontrol (int ,char*,int*) ;
 scalar_t__ roff_getreg (int ,char*) ;

int
mdoc_parseln(struct roff_man *mdoc, int ln, char *buf, int offs)
{

 if (mdoc->last->type != ROFFT_EQN || ln > mdoc->last->line)
  mdoc->flags |= MDOC_NEWLINE;







 if (roff_getreg(mdoc->roff, "nS"))
  mdoc->flags |= MDOC_SYNOPSIS;
 else
  mdoc->flags &= ~MDOC_SYNOPSIS;

 return roff_getcontrol(mdoc->roff, buf, &offs) ?
     mdoc_pmacro(mdoc, ln, buf, offs) :
     mdoc_ptext(mdoc, ln, buf, offs);
}
