
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



__attribute__((used)) static inline void WPA_PUT_BE16(u8 *a, u16 val)
{
 a[0] = val >> 8;
 a[1] = val & 0xff;
}
