
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __sbistype (int,int) ;

int
isrune(int c)
{
 return (__sbistype(c, 0xFFFFFF00L));
}
