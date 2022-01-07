
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; scalar_t__ cache; } ;
struct mem_region {scalar_t__ hi; TYPE_1__ attrib; } ;
typedef scalar_t__ CORE_ADDR ;


 int EIO ;


 int dcache_xfer_memory (int ,scalar_t__,char*,int,int) ;
 int do_xfer_memory (scalar_t__,char*,int,int,TYPE_1__*) ;
 int errno ;
 struct mem_region* lookup_mem_region (scalar_t__) ;
 int target_dcache ;

__attribute__((used)) static int
target_xfer_memory_partial (CORE_ADDR memaddr, char *myaddr, int len,
       int write_p, int *err)
{
  int res;
  int reg_len;
  struct mem_region *region;


  if (len == 0)
    {
      *err = 0;
      return 0;
    }

  region = lookup_mem_region(memaddr);
  if (memaddr + len < region->hi)
    reg_len = len;
  else
    reg_len = region->hi - memaddr;

  switch (region->attrib.mode)
    {
    case 129:
      if (write_p)
 {
   *err = EIO;
   return -1;
 }
      break;

    case 128:
      if (write_p)
 {
   *err = EIO;
   return -1;
 }
      break;
    }

  if (region->attrib.cache)
    res = dcache_xfer_memory (target_dcache, memaddr, myaddr,
         reg_len, write_p);
  else
    res = do_xfer_memory (memaddr, myaddr, reg_len, write_p,
     &region->attrib);

  if (res <= 0)
    {
      if (errno != 0)
 *err = errno;
      else
 *err = EIO;

        return -1;
    }

  *err = 0;
  return res;
}
