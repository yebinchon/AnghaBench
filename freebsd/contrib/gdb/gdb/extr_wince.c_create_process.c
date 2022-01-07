
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdb_wince_len ;
typedef int PROCESS_INFORMATION ;
typedef int LPWSTR ;
typedef int LPSTR ;
typedef int DWORD ;


 int GDB_CREATEPROCESS ;
 int getresult (char*,int ,int *,int *) ;
 int putdword (char*,int ,int ) ;
 int putmemory (char*,int ,int ,int ) ;
 int towide (int ,int *) ;

__attribute__((used)) static int
create_process (LPSTR exec_file, LPSTR args, DWORD flags, PROCESS_INFORMATION * pi)
{
  gdb_wince_len len;
  LPWSTR buf;

  buf = towide (exec_file, &len);
  putmemory ("CreateProcess exec_file", GDB_CREATEPROCESS, buf, len);
  buf = towide (args, &len);
  putmemory ("CreateProcess args", GDB_CREATEPROCESS, buf, len);
  putdword ("CreateProcess flags", GDB_CREATEPROCESS, flags);
  return getresult ("CreateProcess result", GDB_CREATEPROCESS, pi, ((void*)0));
}
