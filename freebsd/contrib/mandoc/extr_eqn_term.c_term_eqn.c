
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {int flags; } ;
struct eqn_box {int dummy; } ;


 int TERMP_NOSPACE ;
 int eqn_box (struct termp*,struct eqn_box const*) ;

void
term_eqn(struct termp *p, const struct eqn_box *bp)
{

 eqn_box(p, bp);
 p->flags &= ~TERMP_NOSPACE;
}
