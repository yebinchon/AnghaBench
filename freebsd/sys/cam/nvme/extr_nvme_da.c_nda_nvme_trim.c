
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nvme_dsm_range {int dummy; } ;
struct nda_softc {int nsid; } ;
struct ccb_nvmeio {int cmd; } ;


 int CAM_DIR_OUT ;
 int cam_fill_nvmeio (struct ccb_nvmeio*,int ,int ,int ,void*,int,int) ;
 int nda_default_timeout ;
 int ndadone ;
 int nvme_ns_trim_cmd (int *,int ,int) ;

__attribute__((used)) static void
nda_nvme_trim(struct nda_softc *softc, struct ccb_nvmeio *nvmeio,
    void *payload, uint32_t num_ranges)
{
 cam_fill_nvmeio(nvmeio,
     0,
     ndadone,
     CAM_DIR_OUT,
     payload,
     num_ranges * sizeof(struct nvme_dsm_range),
     nda_default_timeout * 1000);
 nvme_ns_trim_cmd(&nvmeio->cmd, softc->nsid, num_ranges);
}
