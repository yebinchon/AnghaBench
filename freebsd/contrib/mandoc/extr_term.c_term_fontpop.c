
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {int fonti; } ;


 int assert (int ) ;

void
term_fontpop(struct termp *p)
{

 assert(p->fonti);
 p->fonti--;
}
