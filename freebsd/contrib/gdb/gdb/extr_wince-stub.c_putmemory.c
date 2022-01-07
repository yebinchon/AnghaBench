
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gdb_wince_len ;
typedef int gdb_wince_id ;
typedef int LPCWSTR ;


 int putlen (int ,int,int ,scalar_t__) ;
 scalar_t__ sockwrite (int ,int,void const*,scalar_t__) ;
 int stub_error (char*) ;

__attribute__((used)) static void
putmemory (LPCWSTR huh, int s, gdb_wince_id what, const void *mem, gdb_wince_len len)
{
  putlen (huh, s, what, len);
  if (((short) len > 0) && (gdb_wince_len) sockwrite (huh, s, mem, len) != len)
    stub_error (L"error writing memory to host.");
}
