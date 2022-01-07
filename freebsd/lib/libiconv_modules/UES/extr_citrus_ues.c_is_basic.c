
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int uint32_t ;



__attribute__((used)) static __inline bool
is_basic(wchar_t wc)
{

 return ((uint32_t)wc <= 0x9F && wc != 0x24 && wc != 0x40 &&
     wc != 0x60);
}
