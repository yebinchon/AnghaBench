
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_be_block_softc {int lun_list; int beio_zone; int lock; } ;
struct ctl_be_block_io {int dummy; } ;


 int MTX_DEF ;
 int STAILQ_INIT (int *) ;
 int UMA_ALIGN_PTR ;
 struct ctl_be_block_softc backend_block_softc ;
 int mtx_init (int *,char*,int *,int ) ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;

__attribute__((used)) static int
ctl_be_block_init(void)
{
 struct ctl_be_block_softc *softc = &backend_block_softc;

 mtx_init(&softc->lock, "ctlblock", ((void*)0), MTX_DEF);
 softc->beio_zone = uma_zcreate("beio", sizeof(struct ctl_be_block_io),
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR, 0);
 STAILQ_INIT(&softc->lun_list);
 return (0);
}
