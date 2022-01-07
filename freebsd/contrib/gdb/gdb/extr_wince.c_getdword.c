
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int what ;
typedef int n ;
typedef scalar_t__ gdb_wince_id ;
typedef int LPCSTR ;
typedef scalar_t__ DWORD ;


 int s ;
 int sockread (int ,int ,scalar_t__*,int) ;
 int stub_error (char*,int ) ;

__attribute__((used)) static DWORD
getdword (LPCSTR huh, gdb_wince_id what_this)
{
  DWORD n;
  gdb_wince_id what;
  do
    if (sockread (huh, s, &what, sizeof (what)) != sizeof (what))
      stub_error ("error getting record type from host - %s.", huh);
  while (what_this != what);

  if (sockread (huh, s, &n, sizeof (n)) != sizeof (n))
    stub_error ("error getting %s from host.", huh);

  return n;
}
