
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;



__attribute__((used)) static inline void WPA_PUT_LE64(u8 *a, u64 val)
{
 a[7] = val >> 56;
 a[6] = val >> 48;
 a[5] = val >> 40;
 a[4] = val >> 32;
 a[3] = val >> 24;
 a[2] = val >> 16;
 a[1] = val >> 8;
 a[0] = val & 0xff;
}
