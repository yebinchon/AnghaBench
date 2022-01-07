
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int const u32 ;



__attribute__((used)) static inline u32 WPA_GET_BE24(const u8 *a)
{
 return (a[0] << 16) | (a[1] << 8) | a[2];
}
