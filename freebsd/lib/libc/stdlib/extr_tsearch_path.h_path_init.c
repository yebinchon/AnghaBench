
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {scalar_t__ nsteps; } ;



__attribute__((used)) static inline void
path_init(struct path *p)
{

 p->nsteps = 0;
}
