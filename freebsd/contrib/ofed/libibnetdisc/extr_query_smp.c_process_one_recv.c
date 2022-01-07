
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int umad ;
typedef int uint8_t ;
typedef int uint32_t ;
struct ib_user_mad {int dummy; } ;
struct TYPE_14__ {int smps_on_wire; int umad_fd; } ;
typedef TYPE_3__ smp_engine_t ;
struct TYPE_12__ {scalar_t__ id; int mod; } ;
struct TYPE_13__ {TYPE_1__ attr; } ;
struct TYPE_15__ {int (* cb ) (TYPE_3__*,TYPE_4__*,int *,int ) ;int cb_data; TYPE_2__ rpc; int path; } ;
typedef TYPE_4__ ibnd_smp_t ;
typedef int cl_map_item_t ;


 int IBND_ERROR (char*,int,...) ;
 scalar_t__ IB_ATTR_MLNX_EXT_PORT_INFO ;
 int IB_DRSMP_STATUS_F ;
 int IB_MAD_SIZE ;
 int IB_MAD_TRID_F ;
 int * cl_qmap_end (int *) ;
 scalar_t__ cl_qmap_remove (int *,int ) ;
 int free (TYPE_4__*) ;
 int mad_get_field (int *,int ,int ) ;
 scalar_t__ mad_get_field64 (int *,int ,int ) ;
 int memset (int *,int ,int) ;
 int mlnx_ext_port_info_err (TYPE_3__*,TYPE_4__*,int *,int ) ;
 int portid2str (int *) ;
 int process_smp_queue (TYPE_3__*) ;
 int strerror (int) ;
 int stub1 (TYPE_3__*,TYPE_4__*,int *,int ) ;
 int * umad_get_mad (int *) ;
 int umad_recv (int ,int *,int*,int) ;
 int umad_size () ;
 int umad_status (int *) ;

__attribute__((used)) static int process_one_recv(smp_engine_t * engine)
{
 int rc = 0;
 int status = 0;
 ibnd_smp_t *smp;
 uint8_t *mad;
 uint32_t trid;
 uint8_t umad[sizeof(struct ib_user_mad) + IB_MAD_SIZE];
 int length = umad_size() + IB_MAD_SIZE;

 memset(umad, 0, sizeof(umad));


 if ((rc = umad_recv(engine->umad_fd, umad, &length,
       -1)) < 0) {
  IBND_ERROR("umad_recv failed: %d\n", rc);
  return -1;
 }

 mad = umad_get_mad(umad);
 trid = (uint32_t) mad_get_field64(mad, 0, IB_MAD_TRID_F);

 smp = (ibnd_smp_t *) cl_qmap_remove(&engine->smps_on_wire, trid);
 if ((cl_map_item_t *) smp == cl_qmap_end(&engine->smps_on_wire)) {
  IBND_ERROR("Failed to find matching smp for trid (%x)\n", trid);
  return -1;
 }

 rc = process_smp_queue(engine);
 if (rc)
  goto error;

 if ((status = umad_status(umad))) {
  IBND_ERROR("umad (%s Attr 0x%x:%u) bad status %d; %s\n",
      portid2str(&smp->path), smp->rpc.attr.id,
      smp->rpc.attr.mod, status, strerror(status));
  if (smp->rpc.attr.id == IB_ATTR_MLNX_EXT_PORT_INFO)
   rc = mlnx_ext_port_info_err(engine, smp, mad,
          smp->cb_data);
 } else if ((status = mad_get_field(mad, 0, IB_DRSMP_STATUS_F))) {
  IBND_ERROR("mad (%s Attr 0x%x:%u) bad status 0x%x\n",
      portid2str(&smp->path), smp->rpc.attr.id,
      smp->rpc.attr.mod, status);
  if (smp->rpc.attr.id == IB_ATTR_MLNX_EXT_PORT_INFO)
   rc = mlnx_ext_port_info_err(engine, smp, mad,
          smp->cb_data);
 } else
  rc = smp->cb(engine, smp, mad, smp->cb_data);

error:
 free(smp);
 return rc;
}
