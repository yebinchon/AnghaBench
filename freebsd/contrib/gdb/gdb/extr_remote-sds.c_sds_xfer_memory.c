
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;
struct mem_attrib {int dummy; } ;
typedef int CORE_ADDR ;


 int sds_read_bytes (int ,char*,int) ;
 int sds_write_bytes (int ,char*,int) ;

__attribute__((used)) static int
sds_xfer_memory (CORE_ADDR memaddr, char *myaddr, int len, int should_write,
   struct mem_attrib *attrib, struct target_ops *target)
{
  int res;

  if (should_write)
    res = sds_write_bytes (memaddr, myaddr, len);
  else
    res = sds_read_bytes (memaddr, myaddr, len);

  return res;
}
