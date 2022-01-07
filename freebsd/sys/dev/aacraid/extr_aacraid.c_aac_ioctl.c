
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union aac_statrequest {size_t as_item; int as_qstat; } ;
typedef int u_long ;
struct thread {int dummy; } ;
struct cdev {struct aac_softc* si_drv1; } ;
struct aac_softc {int * aac_qstat; } ;
struct aac_qstat {int dummy; } ;
typedef scalar_t__ caddr_t ;






 int EINVAL ;
 int ENOENT ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 char* HBA_FLAGS_DBG_IOCTL_COMMANDS_B ;
 int aac_close_aif (struct aac_softc*,scalar_t__) ;
 int aac_get_pci_info (struct aac_softc*,scalar_t__) ;
 int aac_getnext_aif (struct aac_softc*,scalar_t__) ;
 int aac_ioctl_send_raw_srb (struct aac_softc*,scalar_t__) ;
 int aac_ioctl_sendfib (struct aac_softc*,scalar_t__) ;
 int aac_open_aif (struct aac_softc*,scalar_t__) ;
 int aac_query_disk (struct aac_softc*,scalar_t__) ;
 int aac_rev_check (struct aac_softc*,scalar_t__) ;
 int aac_supported_features (struct aac_softc*,scalar_t__) ;
 int bcopy (int *,int *,int) ;
 int fwprintf (struct aac_softc*,char*,char*,...) ;

__attribute__((used)) static int
aac_ioctl(struct cdev *dev, u_long cmd, caddr_t arg, int flag, struct thread *td)
{
 union aac_statrequest *as;
 struct aac_softc *sc;
 int error = 0;

 as = (union aac_statrequest *)arg;
 sc = dev->si_drv1;
 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 switch (cmd) {
 case 155:
  switch (as->as_item) {
  case 153:
  case 152:
  case 154:
   bcopy(&sc->aac_qstat[as->as_item], &as->as_qstat,
         sizeof(struct aac_qstat));
   break;
  default:
   error = ENOENT;
   break;
  }
 break;

 case 130:
 case 129:
  arg = *(caddr_t*)arg;
 case 136:
 case 135:
  fwprintf(sc, HBA_FLAGS_DBG_IOCTL_COMMANDS_B, "FSACTL_SENDFIB");
  error = aac_ioctl_sendfib(sc, arg);
  break;
 case 128:
  arg = *(caddr_t*)arg;
 case 134:
  fwprintf(sc, HBA_FLAGS_DBG_IOCTL_COMMANDS_B, "FSACTL_SEND_RAW_SRB");
  error = aac_ioctl_send_raw_srb(sc, arg);
  break;
 case 151:
 case 145:
  fwprintf(sc, HBA_FLAGS_DBG_IOCTL_COMMANDS_B, "FSACTL_AIF_THREAD");
  error = EINVAL;
  break;
 case 132:
  arg = *(caddr_t*)arg;
 case 138:
  fwprintf(sc, HBA_FLAGS_DBG_IOCTL_COMMANDS_B, "FSACTL_OPEN_GET_ADAPTER_FIB");
  error = aac_open_aif(sc, arg);
  break;
 case 147:
  arg = *(caddr_t*)arg;
 case 141:
  fwprintf(sc, HBA_FLAGS_DBG_IOCTL_COMMANDS_B, "FSACTL_GET_NEXT_ADAPTER_FIB");
  error = aac_getnext_aif(sc, arg);
  break;
 case 150:
  arg = *(caddr_t*)arg;
 case 144:
  fwprintf(sc, HBA_FLAGS_DBG_IOCTL_COMMANDS_B, "FSACTL_CLOSE_GET_ADAPTER_FIB");
  error = aac_close_aif(sc, arg);
  break;
 case 133:
  arg = *(caddr_t*)arg;
 case 139:
  fwprintf(sc, HBA_FLAGS_DBG_IOCTL_COMMANDS_B, "FSACTL_MINIPORT_REV_CHECK");
  error = aac_rev_check(sc, arg);
  break;
 case 131:
  arg = *(caddr_t*)arg;
 case 137:
  fwprintf(sc, HBA_FLAGS_DBG_IOCTL_COMMANDS_B, "FSACTL_QUERY_DISK");
  error = aac_query_disk(sc, arg);
  break;
 case 149:
 case 143:





  error = 0;
  break;
 case 146:
  arg = *(caddr_t*)arg;
 case 140:
  fwprintf(sc, HBA_FLAGS_DBG_IOCTL_COMMANDS_B, "FSACTL_GET_PCI_INFO");
  error = aac_get_pci_info(sc, arg);
  break;
 case 148:
  arg = *(caddr_t*)arg;
 case 142:
  fwprintf(sc, HBA_FLAGS_DBG_IOCTL_COMMANDS_B, "FSACTL_GET_FEATURES");
  error = aac_supported_features(sc, arg);
  break;
 default:
  fwprintf(sc, HBA_FLAGS_DBG_IOCTL_COMMANDS_B, "unsupported cmd 0x%lx\n", cmd);
  error = EINVAL;
  break;
 }
 return(error);
}
