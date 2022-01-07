
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;
struct mem_attrib {int dummy; } ;
typedef int LPVOID ;
typedef int LPCVOID ;
typedef int DWORD ;
typedef scalar_t__ CORE_ADDR ;


 int DEBUG_MEM (char*) ;
 int FlushInstructionCache (int ,int ,int) ;
 int ReadProcessMemory (int ,int ,char*,int,int*) ;
 int WriteProcessMemory (int ,int ,char*,int,int*) ;
 int current_process_handle ;

int
child_xfer_memory (CORE_ADDR memaddr, char *our, int len,
     int write, struct mem_attrib *mem,
     struct target_ops *target)
{
  DWORD done = 0;
  if (write)
    {
      DEBUG_MEM (("gdb: write target memory, %d bytes at 0x%08lx\n",
    len, (DWORD) memaddr));
      if (!WriteProcessMemory (current_process_handle, (LPVOID) memaddr, our,
          len, &done))
 done = 0;
      FlushInstructionCache (current_process_handle, (LPCVOID) memaddr, len);
    }
  else
    {
      DEBUG_MEM (("gdb: read target memory, %d bytes at 0x%08lx\n",
    len, (DWORD) memaddr));
      if (!ReadProcessMemory (current_process_handle, (LPCVOID) memaddr, our,
         len, &done))
 done = 0;
    }
  return done;
}
