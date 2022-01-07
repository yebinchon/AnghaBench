
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int refcnt_t ;


 int PJDLOG_ASSERT (int) ;
 unsigned int atomic_fetchadd_int (int *,int) ;

__attribute__((used)) static __inline unsigned int
refcnt_release(refcnt_t *count)
{
 unsigned int old;


 old = atomic_fetchadd_int(count, -1);
 PJDLOG_ASSERT(old > 0);
 return (old - 1);
}
