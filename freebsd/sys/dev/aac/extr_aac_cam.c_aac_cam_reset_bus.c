
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
typedef int u_int32_t ;
struct cam_sim {int dummy; } ;
struct aac_vmioctl {int * IoctlBuf; int IoctlCmd; scalar_t__ ObjId; int MethId; int ObjType; int Command; } ;
struct aac_softc {int aac_dev; int scsi_method_id; } ;
struct aac_resetbus {int BusNumber; } ;
struct aac_fib {int * data; } ;
struct aac_cam {TYPE_1__* inf; } ;
struct TYPE_2__ {int BusNumber; struct aac_softc* aac_sc; } ;


 int CAM_REQ_ABORTED ;
 int CAM_REQ_CMP ;
 int ContainerCommand ;
 int FT_DRIVE ;
 int ResetBus ;
 int VM_Ioctl ;
 int aac_alloc_sync_fib (struct aac_softc*,struct aac_fib**) ;
 int aac_release_sync_fib (struct aac_softc*) ;
 int aac_sync_fib (struct aac_softc*,int ,int ,struct aac_fib*,int) ;
 int bzero (struct aac_vmioctl*,int) ;
 scalar_t__ cam_sim_softc (struct cam_sim*) ;
 int device_printf (int ,char*,int) ;
 int printf (char*) ;

__attribute__((used)) static u_int32_t
aac_cam_reset_bus(struct cam_sim *sim, union ccb *ccb)
{
 struct aac_fib *fib;
 struct aac_softc *sc;
 struct aac_cam *camsc;
 struct aac_vmioctl *vmi;
 struct aac_resetbus *rbc;
 int e;

 camsc = (struct aac_cam *)cam_sim_softc(sim);
 sc = camsc->inf->aac_sc;

 if (sc == ((void*)0)) {
  printf("aac: Null sc?\n");
  return (CAM_REQ_ABORTED);
 }

 aac_alloc_sync_fib(sc, &fib);

 vmi = (struct aac_vmioctl *)&fib->data[0];
 bzero(vmi, sizeof(struct aac_vmioctl));

 vmi->Command = VM_Ioctl;
 vmi->ObjType = FT_DRIVE;
 vmi->MethId = sc->scsi_method_id;
 vmi->ObjId = 0;
 vmi->IoctlCmd = ResetBus;

 rbc = (struct aac_resetbus *)&vmi->IoctlBuf[0];
 rbc->BusNumber = camsc->inf->BusNumber;

 e = aac_sync_fib(sc, ContainerCommand, 0, fib,
     sizeof(struct aac_vmioctl));
 if (e) {
  device_printf(sc->aac_dev,"Error %d sending ResetBus command\n",
      e);
  aac_release_sync_fib(sc);
  return (CAM_REQ_ABORTED);
 }

 aac_release_sync_fib(sc);
 return (CAM_REQ_CMP);
}
