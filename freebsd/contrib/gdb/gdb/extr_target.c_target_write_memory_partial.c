
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int target_xfer_memory_partial (int ,char*,int,int,int*) ;

int
target_write_memory_partial (CORE_ADDR memaddr, char *buf, int len, int *err)
{
  return target_xfer_memory_partial (memaddr, buf, len, 1, err);
}
