
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __sputc (int,int ) ;
 int stdout ;

int
putchar_unlocked(int ch)
{

 return (__sputc(ch, stdout));
}
