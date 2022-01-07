
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int ATF_REQUIRE_MSG (int,char*,int ) ;
 int pthread_create (int *,int *,int ,int*) ;
 int pthread_self () ;
 int resolvloop ;
 int strerror (int) ;

__attribute__((used)) static void
run(int *nhosts)
{
 pthread_t self;
 int rc;

 self = pthread_self();
 rc = pthread_create(&self, ((void*)0), resolvloop, nhosts);
 ATF_REQUIRE_MSG(rc == 0, "pthread_create failed: %s", strerror(rc));
}
