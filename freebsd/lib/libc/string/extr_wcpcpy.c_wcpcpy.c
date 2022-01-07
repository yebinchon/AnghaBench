
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;



wchar_t *
wcpcpy(wchar_t * __restrict to, const wchar_t * __restrict from)
{

 for (; (*to = *from); ++from, ++to);
 return(to);
}
