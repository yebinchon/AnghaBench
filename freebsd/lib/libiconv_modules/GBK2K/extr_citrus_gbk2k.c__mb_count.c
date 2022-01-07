
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
typedef int uint32_t ;



__attribute__((used)) static __inline int
_mb_count(wchar_t v)
{
 uint32_t c;

 c = (uint32_t)v;
 if (!(c & 0xffffff00))
  return (1);
 if (!(c & 0xffff0000))
  return (2);
 return (4);
}
