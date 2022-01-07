
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutex_t ;
typedef int mtctxres_t ;


 int PTHREAD_MUTEX_INITIALIZER ;
 scalar_t__ __res_init_ctx () ;
 int _mtctxres_init () ;
 int key ;
 scalar_t__ mt_key_initialized ;
 int * pthread_getspecific (int ) ;
 scalar_t__ pthread_main_np () ;
 scalar_t__ pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int sharedctx ;

mtctxres_t *
___mtctxres(void) {
 return (&sharedctx);
}
