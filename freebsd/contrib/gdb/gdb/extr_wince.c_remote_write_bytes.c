
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdb_wince_len ;
typedef int LPCVOID ;
typedef scalar_t__ CORE_ADDR ;


 int current_process_handle ;
 int write_process_memory (int ,int ,int ,int,int*) ;

__attribute__((used)) static int
remote_write_bytes (CORE_ADDR memaddr, char *myaddr, int len)
{
  gdb_wince_len nbytes;
  if (!write_process_memory (current_process_handle, (LPCVOID) memaddr,
        (LPCVOID) myaddr, len, &nbytes))
    return -1;
  return nbytes;
}
