
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dl_phdr_info {int dummy; } ;
struct TYPE_2__ {int (* std_func ) () ;int (* cxa_func ) (int ) ;} ;
struct atexit_fn {scalar_t__ fn_type; void* fn_dso; TYPE_1__ fn_ptr; int fn_arg; } ;
struct atexit {int ind; struct atexit_fn* fns; struct atexit* next; } ;


 scalar_t__ ATEXIT_FN_CXA ;
 scalar_t__ ATEXIT_FN_EMPTY ;
 scalar_t__ ATEXIT_FN_STD ;
 int _MUTEX_DESTROY (int *) ;
 int _MUTEX_LOCK (int *) ;
 int _MUTEX_UNLOCK (int *) ;
 struct atexit* __atexit ;
 int __elf_phdr_match_addr (struct dl_phdr_info*,int (*) (int )) ;
 int __pthread_cxa_finalize (struct dl_phdr_info*) ;
 int _rtld_addr_phdr (void*,struct dl_phdr_info*) ;
 int atexit_mutex ;
 int global_exit ;
 int stub1 (int ) ;
 int stub2 () ;

void
__cxa_finalize(void *dso)
{
 struct dl_phdr_info phdr_info;
 struct atexit *p;
 struct atexit_fn fn;
 int n, has_phdr;

 if (dso != ((void*)0)) {
  has_phdr = _rtld_addr_phdr(dso, &phdr_info);
 } else {
  has_phdr = 0;
  global_exit = 1;
 }

 _MUTEX_LOCK(&atexit_mutex);
 for (p = __atexit; p; p = p->next) {
  for (n = p->ind; --n >= 0;) {
   if (p->fns[n].fn_type == ATEXIT_FN_EMPTY)
    continue;
   fn = p->fns[n];
   if (dso != ((void*)0) && dso != fn.fn_dso) {

    if (!has_phdr || global_exit ||
        !__elf_phdr_match_addr(&phdr_info,
        fn.fn_ptr.cxa_func))
     continue;
   }




   p->fns[n].fn_type = ATEXIT_FN_EMPTY;
          _MUTEX_UNLOCK(&atexit_mutex);


   if (fn.fn_type == ATEXIT_FN_CXA)
    fn.fn_ptr.cxa_func(fn.fn_arg);
   else if (fn.fn_type == ATEXIT_FN_STD)
    fn.fn_ptr.std_func();
   _MUTEX_LOCK(&atexit_mutex);
  }
 }
 _MUTEX_UNLOCK(&atexit_mutex);
 if (dso == ((void*)0))
  _MUTEX_DESTROY(&atexit_mutex);

 if (has_phdr && !global_exit && &__pthread_cxa_finalize != ((void*)0))
  __pthread_cxa_finalize(&phdr_info);
}
