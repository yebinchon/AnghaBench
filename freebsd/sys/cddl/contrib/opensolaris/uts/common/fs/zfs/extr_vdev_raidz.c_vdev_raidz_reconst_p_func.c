
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int src ;



__attribute__((used)) static int
vdev_raidz_reconst_p_func(void *dbuf, void *sbuf, size_t size, void *private)
{
 uint64_t *dst = dbuf;
 uint64_t *src = sbuf;
 int cnt = size / sizeof (src[0]);

 for (int i = 0; i < cnt; i++) {
  dst[i] ^= src[i];
 }

 return (0);
}
