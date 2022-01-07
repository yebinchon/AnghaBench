
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int msg ;
typedef int RES ;


 int ssl_print_text (int *,char*) ;
 int vsnprintf (char*,int,char const*,int ) ;

__attribute__((used)) static int
ssl_print_vmsg(RES* ssl, const char* format, va_list args)
{
 char msg[1024];
 vsnprintf(msg, sizeof(msg), format, args);
 return ssl_print_text(ssl, msg);
}
