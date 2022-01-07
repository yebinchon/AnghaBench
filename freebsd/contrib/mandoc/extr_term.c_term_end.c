
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {int (* end ) (struct termp*) ;} ;


 int stub1 (struct termp*) ;

void
term_end(struct termp *p)
{

 (*p->end)(p);
}
