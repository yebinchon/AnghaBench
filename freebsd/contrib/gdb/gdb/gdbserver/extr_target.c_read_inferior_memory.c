
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* read_memory ) (int ,char*,int) ;} ;
typedef int CORE_ADDR ;


 int check_mem_read (int ,char*,int) ;
 int stub1 (int ,char*,int) ;
 TYPE_1__* the_target ;

int
read_inferior_memory (CORE_ADDR memaddr, char *myaddr, int len)
{
  int res;
  res = (*the_target->read_memory) (memaddr, myaddr, len);
  check_mem_read (memaddr, myaddr, len);
  return res;
}
