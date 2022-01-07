
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wctrans_t ;


 int wctrans_l (char const*,int ) ;

wctrans_t
wctrans(const char *charclass)
{
 return wctrans_l(charclass, 0);
}
