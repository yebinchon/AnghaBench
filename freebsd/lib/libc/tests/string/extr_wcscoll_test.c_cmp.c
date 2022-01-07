
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int wcscoll (int const*,int const*) ;

__attribute__((used)) static int
cmp(const void *a, const void *b)
{
 const wchar_t wa[2] = { *(const wchar_t *)a, 0 };
 const wchar_t wb[2] = { *(const wchar_t *)b, 0 };

 return (wcscoll(wa, wb));
}
