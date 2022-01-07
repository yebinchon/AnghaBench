
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {int t_dcom; } ;
struct biltins {int minargs; int maxargs; int (* bfunct ) (int ,struct command*) ;int bname; } ;


 int ERR_NAME ;
 int ERR_TOOFEW ;
 int ERR_TOOMANY ;
 int blklen (int ) ;
 int setname (int ) ;
 int stderror (int) ;
 int stub1 (int ,struct command*) ;
 int xechoit (int ) ;

void
func(struct command *t, const struct biltins *bp)
{
    int i;

    xechoit(t->t_dcom);
    setname(bp->bname);
    i = blklen(t->t_dcom) - 1;
    if (i < bp->minargs)
 stderror(ERR_NAME | ERR_TOOFEW);
    if (i > bp->maxargs)
 stderror(ERR_NAME | ERR_TOOMANY);
    (*bp->bfunct) (t->t_dcom, t);
}
