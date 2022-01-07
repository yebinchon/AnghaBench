
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int what ;
typedef int n ;
typedef int gdb_wince_id ;
typedef int LPCWSTR ;
typedef int DWORD ;


 int sockwrite (int ,int,int *,int) ;
 int stub_error (char*,int ) ;

__attribute__((used)) static void
putdword (LPCWSTR huh, int s, gdb_wince_id what, DWORD n)
{
  if (sockwrite (huh, s, &what, sizeof (what)) != sizeof (what))
    stub_error (L"error writing record id for %s to host.", huh);
  if (sockwrite (huh, s, &n, sizeof (n)) != sizeof (n))
    stub_error (L"error writing %s to host.", huh);
}
