
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;



__attribute__((used)) static __inline bool
is_lo_surrogate(wchar_t wc)
{

 return (wc >= 0xDC00 && wc <= 0xDFFF);
}
