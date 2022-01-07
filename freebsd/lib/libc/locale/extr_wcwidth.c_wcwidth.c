
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int __wcwidth (int ) ;

int
wcwidth(wchar_t wc)
{
 return (__wcwidth(wc));
}
