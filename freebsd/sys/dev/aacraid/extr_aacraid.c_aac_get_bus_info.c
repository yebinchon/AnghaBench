
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_vmioctl {int IoctlCmd; scalar_t__ ObjId; int MethId; int ObjType; int Command; scalar_t__ param; int cmd; } ;
struct aac_vmi_businf_resp {scalar_t__ Status; int BusInf; } ;
struct aac_softc {int aac_sim_tqh; int aac_dev; int aac_io_lock; int scsi_method_id; } ;
struct aac_sim {int BusNumber; int InitiatorBusId; int * aac_cam; int * sim_dev; struct aac_softc* aac_sc; int BusType; int TargetsPerBus; } ;
struct aac_getbusinf {int BusCount; scalar_t__* BusValid; int TargetsPerBus; } ;
struct aac_fib {int * data; } ;
struct aac_ctcfg_resp {scalar_t__ Status; int param; } ;
struct aac_ctcfg {int IoctlCmd; scalar_t__ ObjId; int MethId; int ObjType; int Command; scalar_t__ param; int cmd; } ;
typedef int * device_t ;


 scalar_t__ AAC_BUS_VALID ;
 int CT_GET_SCSI_METHOD ;
 int ContainerCommand ;
 int FT_DRIVE ;
 int GetBusInfo ;
 int M_AACRAIDBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int PASSTHROUGH_BUS ;
 scalar_t__ ST_OK ;
 int TAILQ_INSERT_TAIL (int *,struct aac_sim*,int ) ;
 int VM_ContainerConfig ;
 int VM_Ioctl ;
 int aac_alloc_sync_fib (struct aac_softc*,struct aac_fib**) ;
 int aac_release_sync_fib (struct aac_softc*) ;
 int aac_sync_fib (struct aac_softc*,int ,int ,struct aac_fib*,int) ;
 int bcopy (int *,struct aac_getbusinf*,int) ;
 int bzero (struct aac_vmioctl*,int) ;
 int * device_add_child (int ,char*,int) ;
 int device_printf (int ,char*,int) ;
 int device_set_desc (int *,char*) ;
 int device_set_ivars (int *,struct aac_sim*) ;
 int free (struct aac_sim*,int ) ;
 scalar_t__ malloc (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sim_link ;

__attribute__((used)) static void
aac_get_bus_info(struct aac_softc *sc)
{
 struct aac_fib *fib;
 struct aac_ctcfg *c_cmd;
 struct aac_ctcfg_resp *c_resp;
 struct aac_vmioctl *vmi;
 struct aac_vmi_businf_resp *vmi_resp;
 struct aac_getbusinf businfo;
 struct aac_sim *caminf;
 device_t child;
 int i, error;

 mtx_lock(&sc->aac_io_lock);
 aac_alloc_sync_fib(sc, &fib);
 c_cmd = (struct aac_ctcfg *)&fib->data[0];
 bzero(c_cmd, sizeof(struct aac_ctcfg));

 c_cmd->Command = VM_ContainerConfig;
 c_cmd->cmd = CT_GET_SCSI_METHOD;
 c_cmd->param = 0;

 error = aac_sync_fib(sc, ContainerCommand, 0, fib,
     sizeof(struct aac_ctcfg));
 if (error) {
  device_printf(sc->aac_dev, "Error %d sending "
      "VM_ContainerConfig command\n", error);
  aac_release_sync_fib(sc);
  mtx_unlock(&sc->aac_io_lock);
  return;
 }

 c_resp = (struct aac_ctcfg_resp *)&fib->data[0];
 if (c_resp->Status != ST_OK) {
  device_printf(sc->aac_dev, "VM_ContainerConfig returned 0x%x\n",
      c_resp->Status);
  aac_release_sync_fib(sc);
  mtx_unlock(&sc->aac_io_lock);
  return;
 }

 sc->scsi_method_id = c_resp->param;

 vmi = (struct aac_vmioctl *)&fib->data[0];
 bzero(vmi, sizeof(struct aac_vmioctl));

 vmi->Command = VM_Ioctl;
 vmi->ObjType = FT_DRIVE;
 vmi->MethId = sc->scsi_method_id;
 vmi->ObjId = 0;
 vmi->IoctlCmd = GetBusInfo;

 error = aac_sync_fib(sc, ContainerCommand, 0, fib,
     sizeof(struct aac_vmi_businf_resp));
 if (error) {
  device_printf(sc->aac_dev, "Error %d sending VMIoctl command\n",
      error);
  aac_release_sync_fib(sc);
  mtx_unlock(&sc->aac_io_lock);
  return;
 }

 vmi_resp = (struct aac_vmi_businf_resp *)&fib->data[0];
 if (vmi_resp->Status != ST_OK) {
  device_printf(sc->aac_dev, "VM_Ioctl returned %d\n",
      vmi_resp->Status);
  aac_release_sync_fib(sc);
  mtx_unlock(&sc->aac_io_lock);
  return;
 }

 bcopy(&vmi_resp->BusInf, &businfo, sizeof(struct aac_getbusinf));
 aac_release_sync_fib(sc);
 mtx_unlock(&sc->aac_io_lock);

 for (i = 0; i < businfo.BusCount; i++) {
  if (businfo.BusValid[i] != AAC_BUS_VALID)
   continue;

  caminf = (struct aac_sim *)malloc( sizeof(struct aac_sim),
      M_AACRAIDBUF, M_NOWAIT | M_ZERO);
  if (caminf == ((void*)0)) {
   device_printf(sc->aac_dev,
       "No memory to add passthrough bus %d\n", i);
   break;
  }

  child = device_add_child(sc->aac_dev, "aacraidp", -1);
  if (child == ((void*)0)) {
   device_printf(sc->aac_dev,
       "device_add_child failed for passthrough bus %d\n",
       i);
   free(caminf, M_AACRAIDBUF);
   break;
  }

  caminf->TargetsPerBus = businfo.TargetsPerBus;
  caminf->BusNumber = i+1;
  caminf->BusType = PASSTHROUGH_BUS;
  caminf->InitiatorBusId = -1;
  caminf->aac_sc = sc;
  caminf->sim_dev = child;
  caminf->aac_cam = ((void*)0);

  device_set_ivars(child, caminf);
  device_set_desc(child, "SCSI Passthrough Bus");
  TAILQ_INSERT_TAIL(&sc->aac_sim_tqh, caminf, sim_link);
 }
}
