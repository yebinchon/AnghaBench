
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdb_wince_len ;
typedef int LPCVOID ;
typedef int HANDLE ;


 int GDB_WRITEPROCESSMEMORY ;
 int getresult (char*,int ,int *,int *) ;
 int puthandle (char*,int ,int ) ;
 int putmemory (char*,int ,int ,int ) ;
 int putpvoid (char*,int ,int ) ;
 scalar_t__ s ;

__attribute__((used)) static int
write_process_memory (HANDLE h, LPCVOID where, LPCVOID buf, gdb_wince_len len, gdb_wince_len * nbytes)
{
  if (s < 0)
    return 1;
  puthandle ("WriteProcessMemory handle", GDB_WRITEPROCESSMEMORY, h);
  putpvoid ("WriteProcessMemory location", GDB_WRITEPROCESSMEMORY, where);
  putmemory ("WriteProcProcessMemory buf", GDB_WRITEPROCESSMEMORY, buf, len);

  return getresult ("WriteProcessMemory result", GDB_WRITEPROCESSMEMORY, nbytes, ((void*)0));
}
