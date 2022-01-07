
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static inline void WPA_PUT_BE24(u8 *a, u32 val)
{
 a[0] = (val >> 16) & 0xff;
 a[1] = (val >> 8) & 0xff;
 a[2] = val & 0xff;
}
