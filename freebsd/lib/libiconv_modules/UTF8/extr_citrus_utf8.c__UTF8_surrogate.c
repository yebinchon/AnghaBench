
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;



__attribute__((used)) static __inline bool
_UTF8_surrogate(wchar_t wc)
{

 return (wc >= 0xd800 && wc <= 0xdfff);
}
