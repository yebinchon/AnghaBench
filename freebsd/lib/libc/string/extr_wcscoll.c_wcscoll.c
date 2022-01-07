
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int __get_locale () ;
 int wcscoll_l (int const*,int const*,int ) ;

int
wcscoll(const wchar_t *ws1, const wchar_t *ws2)
{
 return wcscoll_l(ws1, ws2, __get_locale());
}
