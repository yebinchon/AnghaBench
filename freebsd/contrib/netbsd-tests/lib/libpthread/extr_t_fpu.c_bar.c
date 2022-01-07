
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE_EQ (double,int) ;
 int N_RECURSE ;
 int PTHREAD_REQUIRE (int ) ;
 int atf_tc_pass () ;
 int mul3 (int,int,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int recurse () ;
 int recursion_depth ;
 int recursion_depth_lock ;

__attribute__((used)) static void *
bar(void *p)
{
 double d;
 int rc;

 d = mul3(mul3(2., 3., 5.), mul3(7., 11., 13.), mul3(17., 19., 23.));
 ATF_REQUIRE_EQ(d, 223092870.);

 PTHREAD_REQUIRE(pthread_mutex_lock(&recursion_depth_lock));
 rc = recursion_depth++;
 PTHREAD_REQUIRE(pthread_mutex_unlock(&recursion_depth_lock));

 if (rc < N_RECURSE)
  recurse();
 else
  atf_tc_pass();


 return ((void*)0);
}
