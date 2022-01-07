
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int vtable; } ;
struct TYPE_4__ {int (* init ) (int *) ;} ;


 int br_sha256_SIZE ;
 TYPE_1__ br_sha256_vtable ;
 TYPE_2__ pcr_ctx ;
 int pcr_hlen ;
 TYPE_1__* pcr_md ;
 scalar_t__ pcr_updating ;
 int stub1 (int *) ;

void
ve_pcr_init(void)
{
 pcr_updating = 0;
 pcr_hlen = br_sha256_SIZE;
 pcr_md = &br_sha256_vtable;
 pcr_md->init(&pcr_ctx.vtable);
}
