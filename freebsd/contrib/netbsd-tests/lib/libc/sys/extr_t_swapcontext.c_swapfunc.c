
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE (int ) ;
 int ATF_REQUIRE_EQ (int ,int *) ;
 int _lwp_getprivate () ;
 scalar_t__ alter_tlsbase ;
 int nctx ;
 int ntls ;
 int octx ;
 int printf (char*,...) ;
 int swapcontext (int *,int *) ;
 int val1 ;
 int val2 ;

__attribute__((used)) static void
swapfunc(void *arg)
{
 ntls = _lwp_getprivate();
 printf("after swapcontext TLS pointer = %p\n", ntls);

 if (alter_tlsbase) {
  ATF_REQUIRE_EQ(ntls, &val1);
  printf("TLS pointer modified by swapcontext()\n");
 } else {
  ATF_REQUIRE_EQ(ntls, &val2);
  printf("TLS pointer left untouched by swapcontext()\n");
 }


 ATF_REQUIRE(swapcontext(&nctx, &octx));


 return;
}
