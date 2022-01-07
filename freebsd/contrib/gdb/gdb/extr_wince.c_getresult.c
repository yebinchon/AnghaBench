
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gdb_wince_len ;
typedef int gdb_wince_id ;
typedef int LPVOID ;
typedef int LPCSTR ;


 int SetLastError (short) ;
 scalar_t__ getlen (int ,int ) ;
 int s ;
 scalar_t__ sockread (int ,int ,int ,scalar_t__) ;
 int stub_error (char*,int ) ;

int
getresult (LPCSTR huh, gdb_wince_id what, LPVOID buf, gdb_wince_len * nbytes)
{
  gdb_wince_len dummy;
  if (nbytes == ((void*)0))
    nbytes = &dummy;

  *nbytes = getlen (huh, what);

  if ((short) *nbytes < 0)
    {
      SetLastError (-(short) *nbytes);
      return 0;
    }

  if ((gdb_wince_len) sockread (huh, s, buf, *nbytes) != *nbytes)
    stub_error ("couldn't read information from wince stub - %s", huh);

  return 1;
}
