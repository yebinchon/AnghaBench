
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; scalar_t__ sa_flags; int sa_mask; } ;


 int ALL_STD_EXCEPT ;
 int FE_ALL_EXCEPT ;
 int FE_DIVBYZERO ;
 int FE_INEXACT ;
 int FE_INVALID ;
 int FE_OVERFLOW ;
 int FE_UNDERFLOW ;
 unsigned int NEXCEPTS ;
 int SIGFPE ;
 int WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int assert (int) ;
 int errx (int,char*) ;
 int fedisableexcept (int) ;
 int feenableexcept (int) ;
 int fegetexcept () ;
 int feraiseexcept (int) ;
 scalar_t__ fetestexcept (int) ;
 int fork () ;
 int raiseexcept (int) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int* std_excepts ;
 int trap_handler ;
 int wait (int*) ;

__attribute__((used)) static void
test_masking(void)
{
 struct sigaction act;
 int except, pass, raise, status;
 unsigned i;

 assert((fegetexcept() & ALL_STD_EXCEPT) == 0);
 assert((feenableexcept(FE_INVALID|FE_OVERFLOW) & ALL_STD_EXCEPT) == 0);
 assert((feenableexcept(FE_UNDERFLOW) & ALL_STD_EXCEPT) ==
     (FE_INVALID | FE_OVERFLOW));
 assert((fedisableexcept(FE_OVERFLOW) & ALL_STD_EXCEPT) ==
     (FE_INVALID | FE_OVERFLOW | FE_UNDERFLOW));
 assert((fegetexcept() & ALL_STD_EXCEPT) == (FE_INVALID | FE_UNDERFLOW));
 assert((fedisableexcept(FE_ALL_EXCEPT) & ALL_STD_EXCEPT) ==
     (FE_INVALID | FE_UNDERFLOW));
 assert((fegetexcept() & ALL_STD_EXCEPT) == 0);

 sigemptyset(&act.sa_mask);
 act.sa_flags = 0;
 act.sa_handler = trap_handler;
 for (pass = 0; pass < 2; pass++) {
  for (i = 0; i < NEXCEPTS; i++) {
   except = std_excepts[i];

   if (except == FE_INEXACT)
    raise = FE_DIVBYZERO | FE_INVALID;
   else
    raise = ALL_STD_EXCEPT ^ except;






   switch(fork()) {
   case 0:
    assert((fegetexcept() & ALL_STD_EXCEPT) == 0);
    assert((feenableexcept(except)
        & ALL_STD_EXCEPT) == 0);
    assert(fegetexcept() == except);
    raiseexcept(raise);
    assert(feraiseexcept(raise) == 0);
    assert(fetestexcept(ALL_STD_EXCEPT) == raise);

    assert(sigaction(SIGFPE, &act, ((void*)0)) == 0);
    switch (pass) {
    case 0:
     raiseexcept(except);
    case 1:
     feraiseexcept(except);
    default:
     assert(0);
    }
    assert(0);
   default:
    assert(wait(&status) > 0);




    if (!WIFEXITED(status))
     errx(1, "child aborted\n");
    assert(WEXITSTATUS(status) == 0);
    break;
   case -1:
    assert(0);
   }
  }
 }
 assert(fetestexcept(FE_ALL_EXCEPT) == 0);
}
