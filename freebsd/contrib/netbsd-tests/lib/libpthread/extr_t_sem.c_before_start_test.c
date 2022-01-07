
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int ATF_REQUIRE (int) ;
 int PTHREAD_REQUIRE (int ) ;
 int SEM_REQUIRE (int ) ;
 int SIGALRM ;
 scalar_t__ SIG_ERR ;
 int alarm_ms (int) ;
 int pthread_create (int *,int *,int (*) (int *),int *) ;
 int pthread_join (int ,int *) ;
 int sem ;
 int sem_init (int *,int ,int ) ;
 int sighandler ;
 scalar_t__ signal (int ,int ) ;
 int threadfunc (int *) ;

__attribute__((used)) static void
before_start_test(const bool use_pthread)
{
 pthread_t t;

 SEM_REQUIRE(sem_init(&sem, 0, 0));
 ATF_REQUIRE(SIG_ERR != signal(SIGALRM, sighandler));

 alarm_ms(5);

 if (use_pthread) {
  PTHREAD_REQUIRE(pthread_create(&t, ((void*)0), threadfunc, ((void*)0)));
  PTHREAD_REQUIRE(pthread_join(t, ((void*)0)));
 } else {
  threadfunc(((void*)0));
 }
}
