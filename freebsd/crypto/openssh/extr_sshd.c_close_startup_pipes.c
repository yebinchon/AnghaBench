
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_startups; } ;


 int close (int) ;
 TYPE_1__ options ;
 int* startup_pipes ;

__attribute__((used)) static void
close_startup_pipes(void)
{
 int i;

 if (startup_pipes)
  for (i = 0; i < options.max_startups; i++)
   if (startup_pipes[i] != -1)
    close(startup_pipes[i]);
}
