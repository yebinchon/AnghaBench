
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TTY_NETWORK ;
 int isttystat (char const*,int ) ;

int
isnettty(const char *tty)
{

 return isttystat(tty, TTY_NETWORK);
}
