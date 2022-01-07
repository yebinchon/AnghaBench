
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FE_ALL_EXCEPT ;
 scalar_t__ FE_DOWNWARD ;
 scalar_t__ FE_TONEAREST ;
 scalar_t__ FE_TOWARDZERO ;
 scalar_t__ FE_UPWARD ;
 int FLT_ROUNDS ;
 int assert (int) ;
 scalar_t__ feclearexcept (int ) ;
 scalar_t__ fegetround () ;
 scalar_t__ fesetround (scalar_t__) ;
 scalar_t__ getround () ;

__attribute__((used)) static void
test_fegsetround(void)
{

 assert(fegetround() == FE_TONEAREST);
 assert(getround() == FE_TONEAREST);
 assert(FLT_ROUNDS == 1);

 assert(fesetround(FE_DOWNWARD) == 0);
 assert(fegetround() == FE_DOWNWARD);
 assert(getround() == FE_DOWNWARD);
 assert(FLT_ROUNDS == 3);

 assert(fesetround(FE_UPWARD) == 0);
 assert(getround() == FE_UPWARD);
 assert(fegetround() == FE_UPWARD);
 assert(FLT_ROUNDS == 2);

 assert(fesetround(FE_TOWARDZERO) == 0);
 assert(getround() == FE_TOWARDZERO);
 assert(fegetround() == FE_TOWARDZERO);
 assert(FLT_ROUNDS == 0);

 assert(fesetround(FE_TONEAREST) == 0);
 assert(getround() == FE_TONEAREST);
 assert(FLT_ROUNDS == 1);

 assert(feclearexcept(FE_ALL_EXCEPT) == 0);
}
