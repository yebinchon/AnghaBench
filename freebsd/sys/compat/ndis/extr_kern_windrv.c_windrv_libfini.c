
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fpu_cc_ent {int ctx; } ;
struct drvdb_ent {int ctx; } ;
struct TYPE_4__ {int dro_drivername; } ;
struct TYPE_3__ {int dro_drivername; } ;


 int ExFreePool (int ) ;
 int KASSERT (int ,char*) ;
 struct fpu_cc_ent* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct fpu_cc_ent*,int ) ;
 int M_DEVBUF ;
 int RtlFreeUnicodeString (int *) ;
 struct fpu_cc_ent* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int drvdb_head ;
 int drvdb_mtx ;
 int entries ;
 TYPE_2__ fake_pccard_driver ;
 TYPE_1__ fake_pci_driver ;
 int fpu_busy_head ;
 int fpu_busy_mtx ;
 int fpu_free_head ;
 int fpu_free_mtx ;
 int fpu_kern_free_ctx (int ) ;
 int free (struct fpu_cc_ent*,int ) ;
 int link ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int my_tids ;
 int smp_rendezvous (int *,int ,int *,int *) ;
 int x86_oldldt ;

int
windrv_libfini(void)
{
 struct drvdb_ent *d;

 struct fpu_cc_ent *ent;


 mtx_lock(&drvdb_mtx);
 while(STAILQ_FIRST(&drvdb_head) != ((void*)0)) {
  d = STAILQ_FIRST(&drvdb_head);
  STAILQ_REMOVE_HEAD(&drvdb_head, link);
  free(d, M_DEVBUF);
 }
 mtx_unlock(&drvdb_mtx);

 RtlFreeUnicodeString(&fake_pci_driver.dro_drivername);
 RtlFreeUnicodeString(&fake_pccard_driver.dro_drivername);

 mtx_destroy(&drvdb_mtx);






 while ((ent = LIST_FIRST(&fpu_free_head)) != ((void*)0)) {
  LIST_REMOVE(ent, entries);
  fpu_kern_free_ctx(ent->ctx);
  free(ent, M_DEVBUF);
 }
 mtx_destroy(&fpu_free_mtx);

 ent = LIST_FIRST(&fpu_busy_head);
 KASSERT(ent == ((void*)0), ("busy fpu context list is not empty"));
 mtx_destroy(&fpu_busy_mtx);

 return (0);
}
