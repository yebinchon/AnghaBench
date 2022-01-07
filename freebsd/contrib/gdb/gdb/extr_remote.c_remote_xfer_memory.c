
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;
struct mem_attrib {int dummy; } ;
typedef int CORE_ADDR ;


 int current_gdbarch ;
 int current_regcache ;
 int gdbarch_remote_translate_xfer_address (int ,int ,int ,int,int *,int*) ;
 int remote_read_bytes (int ,char*,int) ;
 int remote_write_bytes (int ,char*,int) ;

__attribute__((used)) static int
remote_xfer_memory (CORE_ADDR mem_addr, char *buffer, int mem_len,
      int should_write, struct mem_attrib *attrib,
      struct target_ops *target)
{
  CORE_ADDR targ_addr;
  int targ_len;
  int res;


  gdbarch_remote_translate_xfer_address (current_gdbarch, current_regcache,
      mem_addr, mem_len,
      &targ_addr, &targ_len);
  if (targ_len <= 0)
    return 0;

  if (should_write)
    res = remote_write_bytes (targ_addr, buffer, targ_len);
  else
    res = remote_read_bytes (targ_addr, buffer, targ_len);

  return res;
}
