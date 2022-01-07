
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rlimit {long rlim_max; long rlim_cur; } ;
struct TYPE_2__ {int execute; scalar_t__ compile; int name; } ;


 int RLIMIT_STACK ;
 scalar_t__ compile ;
 int execute ;
 int getrlimit (int ,struct rlimit*) ;
 TYPE_1__* matchers ;
 int setrlimit (int ,struct rlimit*) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
install_matcher (char const *name)
{
  int i;




  for (i = 0; matchers[i].compile; i++)
    if (strcmp (name, matchers[i].name) == 0)
      {
 compile = matchers[i].compile;
 execute = matchers[i].execute;
 return 1;
      }
  return 0;
}
