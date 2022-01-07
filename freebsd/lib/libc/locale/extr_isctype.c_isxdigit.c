
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _CTYPE_X ;
 int __isctype (int,int ) ;

int
isxdigit(int c)
{
 return (__isctype(c, _CTYPE_X));
}
