
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gdb_wince_result ;
typedef scalar_t__ gdb_wince_len ;
typedef int LPVOID ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 int GDB_READPROCESSMEMORY ;
 scalar_t__ ReadProcessMemory (int ,int ,int ,scalar_t__,scalar_t__*) ;
 int gethandle (char*,int,int ) ;
 scalar_t__ getlen (char*,int,int ) ;
 int getpvoid (char*,int,int ) ;
 int mempool (unsigned int) ;
 int putresult (char*,scalar_t__,int,int ,int ,scalar_t__) ;

__attribute__((used)) static void
read_process_memory (int s)
{
  HANDLE h = gethandle (L"ReadProcessMemory handle", s, GDB_READPROCESSMEMORY);
  LPVOID p = getpvoid (L"ReadProcessMemory base", s, GDB_READPROCESSMEMORY);
  gdb_wince_len len = getlen (L"ReadProcessMemory size", s, GDB_READPROCESSMEMORY);
  LPVOID buf = mempool ((unsigned int) len);
  DWORD outlen;
  gdb_wince_result res;

  outlen = 0;
  res = (gdb_wince_result) ReadProcessMemory (h, p, buf, len, &outlen);
  putresult (L"ReadProcessMemory data", res, s, GDB_READPROCESSMEMORY,
      buf, (gdb_wince_len) outlen);
}
