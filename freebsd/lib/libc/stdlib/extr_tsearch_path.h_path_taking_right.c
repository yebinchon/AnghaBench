
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {uintptr_t* steps; size_t nsteps; } ;


 size_t STEPS_BIT ;

__attribute__((used)) static inline void
path_taking_right(struct path *p)
{

 p->steps[p->nsteps / STEPS_BIT] &=
     ~((uintptr_t)1 << (p->nsteps % STEPS_BIT));
 ++p->nsteps;
}
