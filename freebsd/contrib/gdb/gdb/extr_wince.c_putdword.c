
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int what ;
typedef int n ;
typedef int gdb_wince_id ;
typedef int LPCSTR ;
typedef int DWORD ;


 int sockwrite (int ,int *,int) ;
 int stub_error (char*,int ) ;

__attribute__((used)) static void
putdword (LPCSTR huh, gdb_wince_id what, DWORD n)
{
  if (sockwrite (huh, &what, sizeof (what)) != sizeof (what))
    stub_error ("error writing record id to host for %s", huh);
  if (sockwrite (huh, &n, sizeof (n)) != sizeof (n))
    stub_error ("error writing %s to host.", huh);
}
