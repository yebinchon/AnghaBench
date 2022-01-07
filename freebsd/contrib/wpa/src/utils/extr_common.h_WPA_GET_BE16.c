
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int const u16 ;



__attribute__((used)) static inline u16 WPA_GET_BE16(const u8 *a)
{
 return (a[0] << 8) | a[1];
}
