
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdb_wince_result ;
typedef int gdb_wince_len ;
typedef int gdb_wince_id ;
typedef int LPCWSTR ;


 scalar_t__ GetLastError () ;
 int putmemory (int ,int,int ,void const*,int) ;

__attribute__((used)) static void
putresult (LPCWSTR huh, gdb_wince_result res, int s, gdb_wince_id what, const void *mem, gdb_wince_len len)
{
  if (!res)
    len = -(int) GetLastError ();
  putmemory (huh, s, what, mem, len);
}
