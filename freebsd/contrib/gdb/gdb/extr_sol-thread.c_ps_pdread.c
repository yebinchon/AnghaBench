
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ps_err_e ;
typedef int gdb_ps_size_t ;
typedef int gdb_ps_read_buf_t ;
typedef int gdb_ps_prochandle_t ;
typedef int gdb_ps_addr_t ;


 int rw_common (int ,int ,int ,int ,int ) ;

ps_err_e
ps_pdread (gdb_ps_prochandle_t ph, gdb_ps_addr_t addr,
    gdb_ps_read_buf_t buf, gdb_ps_size_t size)
{
  return rw_common (0, ph, addr, buf, size);
}
