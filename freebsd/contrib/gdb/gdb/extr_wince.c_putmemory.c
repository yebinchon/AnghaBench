
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gdb_wince_len ;
typedef int gdb_wince_id ;
typedef int LPCSTR ;


 int putlen (int ,int ,scalar_t__) ;
 scalar_t__ sockwrite (int ,void const*,scalar_t__) ;
 int stub_error (char*,int ) ;

__attribute__((used)) static void
putmemory (LPCSTR huh, gdb_wince_id what, const void *mem, gdb_wince_len len)
{
  putlen (huh, what, len);
  if (((short) len > 0) && sockwrite (huh, mem, len) != len)
    stub_error ("error writing %s to host.", huh);
}
