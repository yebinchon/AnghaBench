
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int PTHREAD_REQUIRE (int ) ;
 int bar ;
 int pthread_create (int *,int ,int ,int ) ;
 int sleep (int) ;

__attribute__((used)) static void
recurse(void) {
 pthread_t s2;
 PTHREAD_REQUIRE(pthread_create(&s2, 0, bar, 0));
 sleep(20);
}
