
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline int is_broadcast_ether_addr(const u8 *a)
{
 return (a[0] & a[1] & a[2] & a[3] & a[4] & a[5]) == 0xff;
}
