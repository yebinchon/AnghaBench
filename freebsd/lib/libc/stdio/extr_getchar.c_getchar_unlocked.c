
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __sgetc (int ) ;
 int stdin ;

int
getchar_unlocked(void)
{

 return (__sgetc(stdin));
}
