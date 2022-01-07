
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE (int ) ;
 int ATF_REQUIRE_EQ (int ,void*) ;
 int nctx ;
 void* nself ;
 int octx ;
 int oself ;
 int printf (char*,...) ;
 scalar_t__ pthread_self () ;
 int swapcontext (int *,int *) ;

__attribute__((used)) static void
swapfunc(void *arg)
{




 nself = (void *)pthread_self();
 printf("after swapcontext self = %p\n", nself);

 ATF_REQUIRE_EQ(oself, nself);
 printf("Test succeeded\n");

 ATF_REQUIRE(swapcontext(&nctx, &octx));


 return;
}
