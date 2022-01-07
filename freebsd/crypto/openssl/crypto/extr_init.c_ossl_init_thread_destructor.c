
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_local_inits_st {int dummy; } ;


 int ossl_init_thread_stop (struct thread_local_inits_st*) ;

__attribute__((used)) static void ossl_init_thread_destructor(void *local)
{
    ossl_init_thread_stop((struct thread_local_inits_st *)local);
}
