
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int pthread_attr_t ;


 int ATF_REQUIRE (int) ;
 int ATF_REQUIRE_EQ (int,int) ;
 int EDEADLK ;
 int ESRCH ;
 int PTHREAD_REQUIRE (int) ;
 uintptr_t STACKSIZE ;
 uintptr_t __arraycount (int *) ;
 int check_stack_alignment () ;
 int error ;
 scalar_t__ pthread_attr_destroy (int *) ;
 scalar_t__ pthread_attr_init (int *) ;
 scalar_t__ pthread_attr_setstacksize (int *,uintptr_t) ;
 int pthread_create (int *,int *,int ,void*) ;
 int pthread_detach (int ) ;
 int pthread_exit (int *) ;
 int pthread_join (int ,void**) ;
 int pthread_self () ;
 int threadfunc2 ;

__attribute__((used)) static void *
threadfunc1(void *arg)
{
 pthread_t thread[25];
 pthread_t caller;
 void *val = ((void*)0);
 uintptr_t i;
 int rv;
 pthread_attr_t attr;

 caller = pthread_self();
 rv = pthread_join(caller, ((void*)0));




 ATF_REQUIRE(rv != 0);
 ATF_REQUIRE_EQ(rv, EDEADLK);

 ATF_REQUIRE(pthread_attr_init(&attr) == 0);

 for (i = 0; i < __arraycount(thread); i++) {

  error = 1;

  ATF_REQUIRE(pthread_attr_setstacksize(&attr, STACKSIZE * (i + 1)) == 0);

  rv = pthread_create(&thread[i], &attr, threadfunc2, (void *)i);

  ATF_REQUIRE_EQ(rv, 0);




  PTHREAD_REQUIRE(pthread_join(thread[i], &val));

  ATF_REQUIRE_EQ(error, 0);

  ATF_REQUIRE(val != ((void*)0));
  ATF_REQUIRE(val == (void *)(i + 1));





  rv = pthread_join(thread[i], ((void*)0));

  ATF_REQUIRE_EQ(rv, ESRCH);




  rv = pthread_detach(thread[i]);

  ATF_REQUIRE(rv != 0);
 }

 ATF_REQUIRE(pthread_attr_destroy(&attr) == 0);

 pthread_exit(((void*)0));

 return ((void*)0);
}
