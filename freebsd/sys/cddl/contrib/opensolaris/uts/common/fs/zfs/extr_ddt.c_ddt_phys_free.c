
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int ddt_spa; int ddt_checksum; } ;
typedef TYPE_1__ ddt_t ;
typedef int ddt_phys_t ;
typedef int ddt_key_t ;
typedef int blkptr_t ;


 int ddt_bp_create (int ,int *,int *,int *) ;
 int ddt_phys_clear (int *) ;
 int zio_free (int ,int ,int *) ;

void
ddt_phys_free(ddt_t *ddt, ddt_key_t *ddk, ddt_phys_t *ddp, uint64_t txg)
{
 blkptr_t blk;

 ddt_bp_create(ddt->ddt_checksum, ddk, ddp, &blk);
 ddt_phys_clear(ddp);
 zio_free(ddt->ddt_spa, txg, &blk);
}
