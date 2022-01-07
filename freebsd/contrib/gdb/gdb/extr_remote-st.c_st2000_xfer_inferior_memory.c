
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;
struct mem_attrib {int dummy; } ;
typedef int CORE_ADDR ;


 int st2000_read_inferior_memory (int ,char*,int) ;
 int st2000_write_inferior_memory (int ,char*,int) ;

__attribute__((used)) static int
st2000_xfer_inferior_memory (CORE_ADDR memaddr, char *myaddr, int len,
        int write, struct mem_attrib *attrib,
        struct target_ops *target)
{
  if (write)
    return st2000_write_inferior_memory (memaddr, myaddr, len);
  else
    return st2000_read_inferior_memory (memaddr, myaddr, len);
}
