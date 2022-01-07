
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;



__attribute__((used)) static __inline wchar_t
surrogate_to_ucs(wchar_t hi, wchar_t lo)
{

 hi -= 0xD800;
 lo -= 0xDC00;
 return ((hi << 10 | lo) + 0x10000);
}
