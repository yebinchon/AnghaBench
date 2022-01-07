
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TTY_DIALUP ;
 int isttystat (char const*,int ) ;

int
isdialuptty(const char *tty)
{

 return isttystat(tty, TTY_DIALUP);
}
