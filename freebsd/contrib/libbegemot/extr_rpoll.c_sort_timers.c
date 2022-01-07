
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
typedef int ptrdiff_t ;
struct TYPE_2__ {scalar_t__ func; } ;


 int* _xrealloc (int*,int) ;
 int assert (int) ;
 int qsort (int*,int,int,int ) ;
 int* tfd ;
 int tfd_alloc ;
 int tfd_used ;
 int tim_cmp ;
 TYPE_1__* tims ;
 size_t tims_alloc ;
 int tims_used ;

__attribute__((used)) static void
sort_timers(void)
{
 int *pp;
 u_int i;

 if(tims_used > tfd_alloc) {
  tfd_alloc = tims_used;
  tfd = _xrealloc(tfd, sizeof(int *) * tfd_alloc);
 }

 pp = tfd;

 for(i = 0; i < tims_alloc; i++)
  if(tims[i].func)
   *pp++ = i;
 assert(pp - tfd == (ptrdiff_t)tims_used);

 tfd_used = tims_used;
 if(tfd_used > 1)
  qsort(tfd, tfd_used, sizeof(int), tim_cmp);
}
