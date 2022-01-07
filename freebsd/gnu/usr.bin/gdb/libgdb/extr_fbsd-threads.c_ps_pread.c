
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps_prochandle {int dummy; } ;
typedef int psaddr_t ;
typedef int ps_err_e ;


 int PS_ERR ;
 int PS_OK ;
 int builtin_type_void_data_ptr ;
 int extract_typed_address (int *,int ) ;
 int target_read_memory (int ,void*,size_t) ;

ps_err_e
ps_pread (struct ps_prochandle *ph, psaddr_t addr, void *buf, size_t len)
{
  int err = target_read_memory (
    extract_typed_address(&addr, builtin_type_void_data_ptr), buf, len);
  return (err == 0 ? PS_OK : PS_ERR);
}
