
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ofwcell_t ;


 int ofw (scalar_t__*) ;
 int stub1 (scalar_t__*) ;

__attribute__((used)) static void
ofw_exit(void)
{
 ofwcell_t args[3];

 args[0] = (ofwcell_t)"exit";
 args[1] = 0;
 args[2] = 0;

 for (;;)
  (*ofw)(args);
}
