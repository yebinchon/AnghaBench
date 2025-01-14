
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;



__attribute__((used)) static inline u64 WPA_GET_LE64(const u8 *a)
{
 return (((u64) a[7]) << 56) | (((u64) a[6]) << 48) |
  (((u64) a[5]) << 40) | (((u64) a[4]) << 32) |
  (((u64) a[3]) << 24) | (((u64) a[2]) << 16) |
  (((u64) a[1]) << 8) | ((u64) a[0]);
}
