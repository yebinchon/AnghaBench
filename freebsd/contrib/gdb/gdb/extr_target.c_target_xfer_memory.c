
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
 scalar_t__ errno ;
 struct mem_region* lookup_mem_region (scalar_t__) ;
 int memset (char*,int ,int) ;
 int target_dcache ;

__attribute__((used)) static int
target_xfer_memory (CORE_ADDR memaddr, char *myaddr, int len, int write)
{
  int res;
  int reg_len;
  struct mem_region *region;


  if (len == 0)
    {
      return 0;
    }

  while (len > 0)
    {
      region = lookup_mem_region(memaddr);
      if (memaddr + len < region->hi)
 reg_len = len;
      else
 reg_len = region->hi - memaddr;

      switch (region->attrib.mode)
 {
 case 129:
   if (write)
     return EIO;
   break;

 case 128:
   if (!write)
     return EIO;
   break;
 }

      while (reg_len > 0)
 {
   if (region->attrib.cache)
     res = dcache_xfer_memory (target_dcache, memaddr, myaddr,
         reg_len, write);
   else
     res = do_xfer_memory (memaddr, myaddr, reg_len, write,
     &region->attrib);

   if (res <= 0)
     {



       if (!write)
  memset (myaddr, 0, len);
       if (errno == 0)
  return EIO;
       else
  return errno;
     }

   memaddr += res;
   myaddr += res;
   len -= res;
   reg_len -= res;
 }
    }

  return 0;
}
