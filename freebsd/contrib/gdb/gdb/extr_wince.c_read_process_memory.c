
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdb_wince_len ;
typedef int LPVOID ;
typedef int LPCVOID ;
typedef int HANDLE ;


 int GDB_READPROCESSMEMORY ;
 int getresult (char*,int ,int ,int *) ;
 int puthandle (char*,int ,int ) ;
 int putlen (char*,int ,int ) ;
 int putpvoid (char*,int ,int ) ;
 scalar_t__ s ;

__attribute__((used)) static int
read_process_memory (HANDLE h, LPCVOID where, LPVOID buf, gdb_wince_len len, gdb_wince_len * nbytes)
{
  if (s < 0)
    return 1;
  puthandle ("ReadProcessMemory handle", GDB_READPROCESSMEMORY, h);
  putpvoid ("ReadProcessMemory location", GDB_READPROCESSMEMORY, where);
  putlen ("ReadProcessMemory size", GDB_READPROCESSMEMORY, len);

  return getresult ("ReadProcessMemory buf", GDB_READPROCESSMEMORY, buf, nbytes);
}
