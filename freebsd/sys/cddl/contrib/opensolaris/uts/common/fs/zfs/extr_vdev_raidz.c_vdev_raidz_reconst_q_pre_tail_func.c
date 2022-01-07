
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int dst ;


 int VDEV_RAIDZ_64MUL_2 (int ,int ) ;

__attribute__((used)) static int
vdev_raidz_reconst_q_pre_tail_func(void *buf, size_t size, void *private)
{
 uint64_t *dst = buf;
 uint64_t mask;
 int cnt = size / sizeof (dst[0]);

 for (int i = 0; i < cnt; i++, dst++) {

  VDEV_RAIDZ_64MUL_2(*dst, mask);
 }

 return (0);
}
