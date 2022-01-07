
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int refcnt_t ;


 int atomic_add_acq_int (int *,int) ;

__attribute__((used)) static __inline void
refcnt_acquire(refcnt_t *count)
{

 atomic_add_acq_int(count, 1);
}
