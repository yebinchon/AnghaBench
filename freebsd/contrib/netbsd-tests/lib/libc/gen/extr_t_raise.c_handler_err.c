
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t __arraycount (int*) ;
 int fail ;
 int* sig ;

__attribute__((used)) static void
handler_err(int signo)
{
 size_t i;

 for (i = 0; i < __arraycount(sig); i++) {

  if (sig[i] == signo) {
   fail = 0;
   break;
  }
 }
}
