
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALL_STD_EXCEPT ;
 int abort () ;
 int fetestexcept (int ) ;
 int fpequal (long double,long double) ;
 int fprintf (int ,char*,int,char const*,int,int) ;
 int stderr ;

__attribute__((used)) static void
_testl(const char *exp, int line, long double actual, long double expected,
    int except)
{
 int actual_except;

 actual_except = fetestexcept(ALL_STD_EXCEPT);
 if (!fpequal(actual, expected)) {
  fprintf(stderr, "%d: %s returned %La, expecting %La\n",
      line, exp, actual, expected);
  abort();
 }
 if (actual_except != except) {
  fprintf(stderr, "%d: %s raised 0x%x, expecting 0x%x\n",
      line, exp, actual_except, except);
  abort();
 }
}
