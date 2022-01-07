
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct nda_softc {int nsid; } ;
struct ccb_nvmeio {int cmd; } ;


 int CAM_DIR_OUT ;
 int cam_fill_nvmeio (struct ccb_nvmeio*,int ,int ,int ,void*,int ,int) ;
 int nda_default_timeout ;
 int ndadone ;
 int nvme_ns_write_cmd (int *,int ,int ,int ) ;

__attribute__((used)) static void
nda_nvme_write(struct nda_softc *softc, struct ccb_nvmeio *nvmeio,
    void *payload, uint64_t lba, uint32_t len, uint32_t count)
{
 cam_fill_nvmeio(nvmeio,
     0,
     ndadone,
     CAM_DIR_OUT,
     payload,
     len,
     nda_default_timeout * 1000);
 nvme_ns_write_cmd(&nvmeio->cmd, softc->nsid, lba, count);
}
