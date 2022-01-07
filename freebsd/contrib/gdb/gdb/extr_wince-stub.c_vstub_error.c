
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int WCHAR ;
typedef int LPCWSTR ;


 int ExitThread (int) ;
 int MB_ICONERROR ;
 int MessageBoxW (int *,int *,char*,int ) ;
 int WSACleanup () ;
 int wvsprintfW (int *,int ,int ) ;

__attribute__((used)) static void
vstub_error (LPCWSTR fmt, va_list args)
{
  WCHAR buf[4096];
  wvsprintfW (buf, fmt, args);

  MessageBoxW (((void*)0), buf, L"GDB", MB_ICONERROR);
  WSACleanup ();
  ExitThread (1);
}
