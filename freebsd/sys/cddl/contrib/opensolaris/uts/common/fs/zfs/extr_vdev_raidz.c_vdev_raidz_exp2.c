
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint_t ;
typedef int uint8_t ;


 int ASSERT (int) ;
 scalar_t__* vdev_raidz_log2 ;
 int * vdev_raidz_pow2 ;

__attribute__((used)) static uint8_t
vdev_raidz_exp2(uint_t a, int exp)
{
 if (a == 0)
  return (0);

 ASSERT(exp >= 0);
 ASSERT(vdev_raidz_log2[a] > 0 || a == 1);

 exp += vdev_raidz_log2[a];
 if (exp > 255)
  exp -= 255;

 return (vdev_raidz_pow2[exp]);
}
