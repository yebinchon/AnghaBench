
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int LPCSTR ;


 int error (char*,char*) ;
 int s ;
 int vsprintf (char*,int ,int *) ;

__attribute__((used)) static void
vstub_error (LPCSTR fmt, va_list * args)
{
  char buf[4096];
  vsprintf (buf, fmt, args);
  s = -1;
  error ("%s", buf);
}
