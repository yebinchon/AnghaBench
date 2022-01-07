
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; scalar_t__ sa_flags; int sa_mask; } ;
typedef int fenv_t ;


 int ALL_STD_EXCEPT ;
 int FE_ALL_EXCEPT ;
 int FE_DIVBYZERO ;
 int FE_DOWNWARD ;
 int FE_INEXACT ;
 int FE_INVALID ;
 int FE_UPWARD ;
 unsigned int NEXCEPTS ;
 int SIGFPE ;
 int WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int _exit (int ) ;
 int assert (int) ;
 int errx (int,char*) ;
 int feenableexcept (int) ;
 int fegetround () ;
 int feholdexcept (int *) ;
 int fesetround (int ) ;
 scalar_t__ fetestexcept (int) ;
 int feupdateenv (int *) ;
 int fork () ;
 int raiseexcept (int) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int* std_excepts ;
 int trap_handler ;
 int wait (int*) ;

__attribute__((used)) static void
test_feholdupdate(void)
{
 fenv_t env;

 struct sigaction act;
 int except, pass, status, raise;
 unsigned i;

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





    if (pass == 1)
     assert((feenableexcept(except) &
         ALL_STD_EXCEPT) == 0);
    raiseexcept(raise);
    assert(fesetround(FE_DOWNWARD) == 0);
    assert(feholdexcept(&env) == 0);
    assert(fetestexcept(FE_ALL_EXCEPT) == 0);
    raiseexcept(except);
    assert(fesetround(FE_UPWARD) == 0);

    if (pass == 1)
     assert(sigaction(SIGFPE, &act, ((void*)0)) ==
         0);
    assert(feupdateenv(&env) == 0);
    assert(fegetround() == FE_DOWNWARD);
    assert(fetestexcept(ALL_STD_EXCEPT) ==
        (except | raise));

    assert(pass == 0);
    _exit(0);
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
