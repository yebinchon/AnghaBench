
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {int (* hspan ) (struct termp const*,struct roffsu const*) ;} ;
struct roffsu {int dummy; } ;


 int stub1 (struct termp const*,struct roffsu const*) ;

int
term_hspan(const struct termp *p, const struct roffsu *su)
{

 return (*p->hspan)(p, su);
}
