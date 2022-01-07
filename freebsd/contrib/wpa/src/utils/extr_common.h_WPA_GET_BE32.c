
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static inline u32 WPA_GET_BE32(const u8 *a)
{
 return ((u32) a[0] << 24) | (a[1] << 16) | (a[2] << 8) | a[3];
}
