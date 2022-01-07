
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int vtable; } ;
struct TYPE_3__ {int (* update ) (int *,unsigned char*,size_t) ;} ;


 TYPE_2__ pcr_ctx ;
 TYPE_1__* pcr_md ;
 scalar_t__ pcr_updating ;
 int stub1 (int *,unsigned char*,size_t) ;

void
ve_pcr_update(unsigned char *data, size_t dlen)
{
 if (pcr_updating != 0 && pcr_md != ((void*)0))
  pcr_md->update(&pcr_ctx.vtable, data, dlen);
}
