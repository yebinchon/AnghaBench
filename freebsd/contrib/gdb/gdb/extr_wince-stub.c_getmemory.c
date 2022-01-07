
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gdb_wince_len ;
typedef int gdb_wince_id ;
typedef int LPWSTR ;
typedef int LPVOID ;
typedef int LPCWSTR ;


 scalar_t__ getlen (int ,int,int ) ;
 int mempool (unsigned int) ;
 scalar_t__ sockread (int ,int,int ,scalar_t__) ;
 int stub_error (char*) ;

__attribute__((used)) static LPWSTR
getmemory (LPCWSTR huh, int s, gdb_wince_id what, gdb_wince_len *inlen)
{
  LPVOID p;
  gdb_wince_len dummy;

  if (!inlen)
    inlen = &dummy;

  *inlen = getlen (huh, s, what);

  p = mempool ((unsigned int) *inlen);

  if ((gdb_wince_len) sockread (huh, s, p, *inlen) != *inlen)
    stub_error (L"error getting string from host.");

  return p;
}
