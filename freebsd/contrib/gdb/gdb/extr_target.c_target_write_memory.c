
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int target_xfer_memory (int ,char*,int,int) ;

int
target_write_memory (CORE_ADDR memaddr, char *myaddr, int len)
{
  return target_xfer_memory (memaddr, myaddr, len, 1);
}
