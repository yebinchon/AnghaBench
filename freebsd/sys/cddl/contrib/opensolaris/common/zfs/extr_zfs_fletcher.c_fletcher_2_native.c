
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_cksum_t ;


 int fletcher_2_incremental_native (void*,size_t,int *) ;
 int fletcher_init (int *) ;

void
fletcher_2_native(const void *buf, size_t size,
    const void *ctx_template, zio_cksum_t *zcp)
{
 fletcher_init(zcp);
 (void) fletcher_2_incremental_native((void *) buf, size, zcp);
}
