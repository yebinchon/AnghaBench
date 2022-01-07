
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _CTYPE_U ;
 int __sbistype (int,int ) ;

int
isupper(int c)
{
 return (__sbistype(c, _CTYPE_U));
}
