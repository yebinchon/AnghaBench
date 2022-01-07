
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int doprnt (int ,char const*,int ) ;
 int xaddchar ;
 char* xestring ;
 char* xstring ;

int
xvsnprintf(char *str, size_t size, const char *fmt, va_list va)
{
    int count;
    xstring = str;
    xestring = str + size - 1;
    count = doprnt(xaddchar, fmt, va);
    *xstring++ = '\0';
    return count;
}
