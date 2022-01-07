
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _CTYPE_D ;
 int __isctype (int,int ) ;

int
isdigit(int c)
{
 return (__isctype(c, _CTYPE_D));
}
