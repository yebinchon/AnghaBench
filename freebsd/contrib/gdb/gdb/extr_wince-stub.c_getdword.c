
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int what ;
typedef int n ;
typedef scalar_t__ gdb_wince_id ;
typedef int LPCWSTR ;
typedef scalar_t__ DWORD ;


 scalar_t__ skip_next_id ;
 int sockread (int ,int,scalar_t__*,int) ;
 int stub_error (char*,int ) ;

__attribute__((used)) static DWORD
getdword (LPCWSTR huh, int s, gdb_wince_id what_this)
{
  DWORD n;
  gdb_wince_id what;

  if (skip_next_id)
    skip_next_id = 0;
  else
    do
      if (sockread (huh, s, &what, sizeof (what)) != sizeof (what))
 stub_error (L"error getting record type from host - %s.", huh);
    while (what_this != what);

  if (sockread (huh, s, &n, sizeof (n)) != sizeof (n))
    stub_error (L"error getting %s from host.", huh);

  return n;
}
