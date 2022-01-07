
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdb_wince_result ;
typedef scalar_t__ gdb_wince_len ;
typedef int LPVOID ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 int GDB_WRITEPROCESSMEMORY ;
 int WriteProcessMemory (int ,int ,int ,scalar_t__,scalar_t__*) ;
 int gethandle (char*,int,int ) ;
 int getmemory (char*,int,int ,scalar_t__*) ;
 int getpvoid (char*,int,int ) ;
 int putresult (char*,int ,int,int ,scalar_t__*,int) ;

__attribute__((used)) static void
write_process_memory (int s)
{
  HANDLE h = gethandle (L"WriteProcessMemory handle", s, GDB_WRITEPROCESSMEMORY);
  LPVOID p = getpvoid (L"WriteProcessMemory base", s, GDB_WRITEPROCESSMEMORY);
  gdb_wince_len len;
  LPVOID buf = getmemory (L"WriteProcessMemory buf", s, GDB_WRITEPROCESSMEMORY, &len);
  DWORD outlen;
  gdb_wince_result res;

  outlen = 0;
  res = WriteProcessMemory (h, p, buf, (DWORD) len, &outlen);
  putresult (L"WriteProcessMemory data", res, s, GDB_WRITEPROCESSMEMORY,
      (gdb_wince_len *) & outlen, sizeof (gdb_wince_len));
}
