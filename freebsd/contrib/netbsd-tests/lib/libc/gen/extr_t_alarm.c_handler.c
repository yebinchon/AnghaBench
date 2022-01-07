
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGALRM ;
 int fail ;

__attribute__((used)) static void
handler(int signo)
{

 if (signo == SIGALRM)
  fail = 0;
}
