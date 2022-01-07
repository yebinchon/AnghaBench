
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static inline u32 WPA_GET_LE32(const u8 *a)
{
 return ((u32) a[3] << 24) | (a[2] << 16) | (a[1] << 8) | a[0];
}
