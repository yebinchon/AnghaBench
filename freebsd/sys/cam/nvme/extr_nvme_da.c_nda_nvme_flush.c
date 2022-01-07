
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nda_softc {int nsid; } ;
struct ccb_nvmeio {int cmd; } ;


 int CAM_DIR_NONE ;
 int cam_fill_nvmeio (struct ccb_nvmeio*,int ,int ,int ,int *,int ,int) ;
 int nda_default_timeout ;
 int ndadone ;
 int nvme_ns_flush_cmd (int *,int ) ;

__attribute__((used)) static void
nda_nvme_flush(struct nda_softc *softc, struct ccb_nvmeio *nvmeio)
{
 cam_fill_nvmeio(nvmeio,
     0,
     ndadone,
     CAM_DIR_NONE,
     ((void*)0),
     0,
     nda_default_timeout * 1000);
 nvme_ns_flush_cmd(&nvmeio->cmd, softc->nsid);
}
