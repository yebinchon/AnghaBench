
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_be_ramdisk_softc {int lun_list; int lock; } ;


 int MTX_DEF ;
 int STAILQ_INIT (int *) ;
 int memset (struct ctl_be_ramdisk_softc*,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 struct ctl_be_ramdisk_softc rd_softc ;

__attribute__((used)) static int
ctl_backend_ramdisk_init(void)
{
 struct ctl_be_ramdisk_softc *softc = &rd_softc;

 memset(softc, 0, sizeof(*softc));
 mtx_init(&softc->lock, "ctlramdisk", ((void*)0), MTX_DEF);
 STAILQ_INIT(&softc->lun_list);
 return (0);
}
