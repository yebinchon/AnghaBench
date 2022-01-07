
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tid {int dummy; } ;


 int * ExAllocatePoolWithTag (int ,int,int ) ;
 int LIST_INIT (int *) ;
 int MTX_DEF ;
 int NonPagedPool ;
 int STAILQ_INIT (int *) ;
 int drvdb_head ;
 int drvdb_mtx ;
 int fake_pccard_driver ;
 int fake_pci_driver ;
 int fpu_busy_head ;
 int fpu_busy_mtx ;
 int fpu_free_head ;
 int fpu_free_mtx ;
 int mp_ncpus ;
 int mtx_init (int *,char*,char*,int ) ;
 int * my_tids ;
 int panic (char*) ;
 int smp_rendezvous (int *,int ,int *,int *) ;
 int windrv_bus_attach (int *,char*) ;
 int x86_newldt ;

int
windrv_libinit(void)
{
 STAILQ_INIT(&drvdb_head);
 mtx_init(&drvdb_mtx, "Windows driver DB lock",
     "Windows internal lock", MTX_DEF);


 LIST_INIT(&fpu_free_head);
 LIST_INIT(&fpu_busy_head);
 mtx_init(&fpu_free_mtx, "free fpu context list lock", ((void*)0), MTX_DEF);
 mtx_init(&fpu_busy_mtx, "busy fpu context list lock", ((void*)0), MTX_DEF);
 windrv_bus_attach(&fake_pci_driver, "PCI Bus");
 windrv_bus_attach(&fake_pccard_driver, "PCCARD Bus");
 return (0);
}
