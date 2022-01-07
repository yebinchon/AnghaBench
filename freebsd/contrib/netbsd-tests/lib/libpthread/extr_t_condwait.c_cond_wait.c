
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int clockid_t ;


 int ATF_REQUIRE_EQ (int ,int ) ;
 scalar_t__ debug ;
 int printf (char*,char const*) ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_join (int ,int *) ;
 int run ;

__attribute__((used)) static void
cond_wait(clockid_t clck, const char *msg) {
 pthread_t child;

 if (debug)
  printf( "**** %s clock wait starting\n", msg);
 ATF_REQUIRE_EQ(pthread_create(&child, ((void*)0), run, &clck), 0);
 ATF_REQUIRE_EQ(pthread_join(child, ((void*)0)), 0);
 if (debug)
  printf( "**** %s clock wait ended\n", msg);
}
