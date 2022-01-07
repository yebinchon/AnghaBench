
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int spa_t ;
typedef int blkptr_t ;


 int zio_checksum_verify (int const*,int const*,void*) ;

__attribute__((used)) static int
raidz_checksum_verify(const spa_t *spa, const blkptr_t *bp, void *data,
    uint64_t size)
{
 return (zio_checksum_verify(spa, bp, data));
}
