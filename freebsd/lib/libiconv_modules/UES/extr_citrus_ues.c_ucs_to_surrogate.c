
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;



__attribute__((used)) static __inline void
ucs_to_surrogate(wchar_t wc, wchar_t * __restrict hi, wchar_t * __restrict lo)
{

 wc -= 0x10000;
 *hi = (wc >> 10) + 0xD800;
 *lo = (wc & 0x3FF) + 0xDC00;
}
