
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int siginfo_t ;


 int flag ;

__attribute__((used)) static void
upcalls_not_started_handler2(int sig, siginfo_t *info, void *ctx)
{
 if (flag == 1)
  flag = 2;
}
