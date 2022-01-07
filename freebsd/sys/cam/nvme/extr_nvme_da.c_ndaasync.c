
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct nda_softc {int disk; } ;
struct ccb_getdev {int protocol; } ;
struct cam_periph {struct nda_softc* softc; } ;
struct cam_path {int dummy; } ;
typedef int cam_status ;





 int CAM_PERIPH_BIO ;
 int CAM_REQ_CMP ;
 int CAM_REQ_INPROG ;
 uintptr_t CDAI_TYPE_PHYS_PATH ;
 int M_NOWAIT ;
 int PROTO_NVME ;
 int cam_periph_alloc (int ,int ,int ,int ,char*,int ,struct cam_path*,void (*) (void*,int,struct cam_path*,void*),int const,struct ccb_getdev*) ;
 int cam_periph_async (struct cam_periph*,int,struct cam_path*,void*) ;
 int disk_attr_changed (int ,char*,int ) ;
 int ndacleanup ;
 int ndaoninvalidate ;
 int ndaregister ;
 int ndastart ;
 int printf (char*,int) ;

__attribute__((used)) static void
ndaasync(void *callback_arg, u_int32_t code,
 struct cam_path *path, void *arg)
{
 struct cam_periph *periph;

 periph = (struct cam_periph *)callback_arg;
 switch (code) {
 case 129:
 {
  struct ccb_getdev *cgd;
  cam_status status;

  cgd = (struct ccb_getdev *)arg;
  if (cgd == ((void*)0))
   break;

  if (cgd->protocol != PROTO_NVME)
   break;






  status = cam_periph_alloc(ndaregister, ndaoninvalidate,
       ndacleanup, ndastart,
       "nda", CAM_PERIPH_BIO,
       path, ndaasync,
       129, cgd);

  if (status != CAM_REQ_CMP
   && status != CAM_REQ_INPROG)
   printf("ndaasync: Unable to attach to new device "
    "due to status 0x%x\n", status);
  break;
 }
 case 130:
 {
  uintptr_t buftype;

  buftype = (uintptr_t)arg;
  if (buftype == CDAI_TYPE_PHYS_PATH) {
   struct nda_softc *softc;

   softc = periph->softc;
   disk_attr_changed(softc->disk, "GEOM::physpath",
       M_NOWAIT);
  }
  break;
 }
 case 128:
 default:
  cam_periph_async(periph, code, path, arg);
  break;
 }
}
