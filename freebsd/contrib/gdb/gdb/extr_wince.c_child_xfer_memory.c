
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;
struct mem_attrib {int dummy; } ;
typedef int CORE_ADDR ;


 int remote_read_bytes (int ,char*,int) ;
 int remote_write_bytes (int ,char*,int) ;
 int res ;

int
child_xfer_memory (CORE_ADDR memaddr, char *our, int len, int write,
     struct mem_attrib *attrib,
     struct target_ops *target)
{
  if (len <= 0)
    return 0;

  if (write)
    res = remote_write_bytes (memaddr, our, len);
  else
    res = remote_read_bytes (memaddr, our, len);

  return res;
}
