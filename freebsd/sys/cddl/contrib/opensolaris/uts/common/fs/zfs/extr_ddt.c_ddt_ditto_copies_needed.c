
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ io_parent_count; } ;
typedef TYPE_1__ zio_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_10__ {scalar_t__ spa_dedup_ditto; } ;
typedef TYPE_2__ spa_t ;
struct TYPE_11__ {TYPE_2__* ddt_spa; } ;
typedef TYPE_3__ ddt_t ;
struct TYPE_12__ {scalar_t__ ddp_refcnt; } ;
typedef TYPE_4__ ddt_phys_t ;
struct TYPE_13__ {TYPE_1__** dde_lead_zio; TYPE_4__* dde_phys; } ;
typedef TYPE_5__ ddt_entry_t ;


 int DDT_PHYS_SINGLE ;
 int DDT_PHYS_TRIPLE ;
 int MAX (int,int) ;
 scalar_t__ UINT32_MAX ;

int
ddt_ditto_copies_needed(ddt_t *ddt, ddt_entry_t *dde, ddt_phys_t *ddp_willref)
{
 spa_t *spa = ddt->ddt_spa;
 uint64_t total_refcnt = 0;
 uint64_t ditto = spa->spa_dedup_ditto;
 int total_copies = 0;
 int desired_copies = 0;

 for (int p = DDT_PHYS_SINGLE; p <= DDT_PHYS_TRIPLE; p++) {
  ddt_phys_t *ddp = &dde->dde_phys[p];
  zio_t *zio = dde->dde_lead_zio[p];
  uint64_t refcnt = ddp->ddp_refcnt;
  if (zio != ((void*)0))
   refcnt += zio->io_parent_count;
  if (ddp == ddp_willref)
   refcnt++;
  if (refcnt != 0) {
   total_refcnt += refcnt;
   total_copies += p;
  }
 }

 if (ditto == 0 || ditto > UINT32_MAX)
  ditto = UINT32_MAX;

 if (total_refcnt >= 1)
  desired_copies++;
 if (total_refcnt >= ditto)
  desired_copies++;
 if (total_refcnt >= ditto * ditto)
  desired_copies++;

 return (MAX(desired_copies, total_copies) - total_copies);
}
