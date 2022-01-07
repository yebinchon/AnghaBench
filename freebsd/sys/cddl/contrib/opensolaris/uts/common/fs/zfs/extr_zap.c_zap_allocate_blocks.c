
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zap_rwlock; } ;
typedef TYPE_1__ zap_t ;
typedef int uint64_t ;
struct TYPE_6__ {int zap_freeblk; } ;


 int ASSERT (int ) ;
 int RW_WRITE_HELD (int *) ;
 TYPE_2__* zap_f_phys (TYPE_1__*) ;

__attribute__((used)) static uint64_t
zap_allocate_blocks(zap_t *zap, int nblocks)
{
 ASSERT(RW_WRITE_HELD(&zap->zap_rwlock));
 uint64_t newblk = zap_f_phys(zap)->zap_freeblk;
 zap_f_phys(zap)->zap_freeblk += nblocks;
 return (newblk);
}
