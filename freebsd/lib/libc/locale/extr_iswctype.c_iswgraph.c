
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;


 int _CTYPE_G ;
 int __istype (int ,int ) ;

int
iswgraph(wint_t wc)
{
 return (__istype(wc, _CTYPE_G));
}
