
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int doprnt (int ,char const*,int ) ;
 int xputchar ;

int
xvprintf(const char *fmt, va_list va)
{
    return doprnt(xputchar, fmt, va);
}
