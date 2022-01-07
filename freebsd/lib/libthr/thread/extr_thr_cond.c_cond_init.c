
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread_cond_attr {scalar_t__ c_pshared; } ;
struct pthread_cond {int dummy; } ;
typedef struct pthread_cond_attr* pthread_condattr_t ;
typedef struct pthread_cond* pthread_cond_t ;


 int EFAULT ;
 int ENOMEM ;
 scalar_t__ PTHREAD_PROCESS_PRIVATE ;
 struct pthread_cond* THR_PSHARED_PTR ;
 struct pthread_cond* __thr_pshared_offpage (struct pthread_cond**,int) ;
 struct pthread_cond* calloc (int,int) ;
 int cond_init_body (struct pthread_cond*,struct pthread_cond_attr const*) ;

__attribute__((used)) static int
cond_init(pthread_cond_t *cond, const pthread_condattr_t *cond_attr)
{
 struct pthread_cond *cvp;
 const struct pthread_cond_attr *cattr;
 int pshared;

 cattr = cond_attr != ((void*)0) ? *cond_attr : ((void*)0);
 if (cattr == ((void*)0) || cattr->c_pshared == PTHREAD_PROCESS_PRIVATE) {
  pshared = 0;
  cvp = calloc(1, sizeof(struct pthread_cond));
  if (cvp == ((void*)0))
   return (ENOMEM);
 } else {
  pshared = 1;
  cvp = __thr_pshared_offpage(cond, 1);
  if (cvp == ((void*)0))
   return (EFAULT);
 }




 cond_init_body(cvp, cattr);
 *cond = pshared ? THR_PSHARED_PTR : cvp;
 return (0);
}
