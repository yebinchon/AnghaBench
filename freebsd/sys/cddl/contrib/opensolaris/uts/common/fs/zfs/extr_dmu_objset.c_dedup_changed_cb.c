
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int spa_t ;
struct TYPE_2__ {int os_dedup_checksum; int os_dedup_verify; int * os_spa; } ;
typedef TYPE_1__ objset_t ;
typedef enum zio_checksum { ____Placeholder_zio_checksum } zio_checksum ;


 int ASSERT (int) ;
 int ZIO_CHECKSUM_INHERIT ;
 int ZIO_CHECKSUM_MASK ;
 int ZIO_CHECKSUM_OFF ;
 int ZIO_CHECKSUM_VERIFY ;
 int zio_checksum_dedup_select (int *,int ,int ) ;

__attribute__((used)) static void
dedup_changed_cb(void *arg, uint64_t newval)
{
 objset_t *os = arg;
 spa_t *spa = os->os_spa;
 enum zio_checksum checksum;




 ASSERT(newval != ZIO_CHECKSUM_INHERIT);

 checksum = zio_checksum_dedup_select(spa, newval, ZIO_CHECKSUM_OFF);

 os->os_dedup_checksum = checksum & ZIO_CHECKSUM_MASK;
 os->os_dedup_verify = !!(checksum & ZIO_CHECKSUM_VERIFY);
}
