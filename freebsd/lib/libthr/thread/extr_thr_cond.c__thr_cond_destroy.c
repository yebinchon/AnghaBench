
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ c_has_waiters; } ;
struct pthread_cond {TYPE_1__ kcond; scalar_t__ __has_user_waiters; } ;
typedef struct pthread_cond* pthread_cond_t ;


 int EBUSY ;
 int EINVAL ;
 struct pthread_cond* THR_COND_DESTROYED ;
 struct pthread_cond* THR_COND_INITIALIZER ;
 struct pthread_cond* THR_PSHARED_PTR ;
 int __thr_pshared_destroy (struct pthread_cond**) ;
 struct pthread_cond* __thr_pshared_offpage (struct pthread_cond**,int ) ;
 int free (struct pthread_cond*) ;

int
_thr_cond_destroy(pthread_cond_t *cond)
{
 struct pthread_cond *cvp;
 int error;

 error = 0;
 if (*cond == THR_PSHARED_PTR) {
  cvp = __thr_pshared_offpage(cond, 0);
  if (cvp != ((void*)0)) {
   if (cvp->kcond.c_has_waiters)
    error = EBUSY;
   else
    __thr_pshared_destroy(cond);
  }
  if (error == 0)
   *cond = THR_COND_DESTROYED;
 } else if ((cvp = *cond) == THR_COND_INITIALIZER) {

 } else if (cvp == THR_COND_DESTROYED) {
  error = EINVAL;
 } else {
  cvp = *cond;
  if (cvp->__has_user_waiters || cvp->kcond.c_has_waiters)
   error = EBUSY;
  else {
   *cond = THR_COND_DESTROYED;
   free(cvp);
  }
 }
 return (error);
}
