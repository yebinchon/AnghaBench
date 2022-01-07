
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct val_env {int nsec3_keyiter_count; size_t* nsec3_keysize; size_t* nsec3_maxiter; } ;


 int log_assert (int) ;

__attribute__((used)) static size_t
get_max_iter(struct val_env* ve, size_t bits)
{
 int i;
 log_assert(ve->nsec3_keyiter_count > 0);

 for(i=0; i<ve->nsec3_keyiter_count; i++) {
  if(bits <= ve->nsec3_keysize[i])
   return ve->nsec3_maxiter[i];
 }

 return ve->nsec3_maxiter[ve->nsec3_keyiter_count-1];
}
