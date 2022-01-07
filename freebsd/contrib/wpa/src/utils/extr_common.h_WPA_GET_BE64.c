
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;



__attribute__((used)) static inline u64 WPA_GET_BE64(const u8 *a)
{
 return (((u64) a[0]) << 56) | (((u64) a[1]) << 48) |
  (((u64) a[2]) << 40) | (((u64) a[3]) << 32) |
  (((u64) a[4]) << 24) | (((u64) a[5]) << 16) |
  (((u64) a[6]) << 8) | ((u64) a[7]);
}
