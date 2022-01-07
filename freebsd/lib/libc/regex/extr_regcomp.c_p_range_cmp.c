
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int __wcollate_range_cmp (int,int) ;
 int wcscoll (int*,int*) ;

__attribute__((used)) static int
p_range_cmp(wchar_t c1, wchar_t c2)
{

 return __wcollate_range_cmp(c1, c2);
}
