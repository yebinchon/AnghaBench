
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wire_dt ;
struct ha_softc {int ha_lock; int ha_dts; } ;
struct ha_dt_msg_wire {scalar_t__ command; int remote; int local; int size; } ;
struct ctl_ha_dt_req {scalar_t__ command; int size; int local; int * callback; int remote; } ;
typedef int ctl_ha_status ;


 int CTL_HA_CHAN_DATA ;
 scalar_t__ CTL_HA_DT_CMD_READ ;
 int CTL_HA_STATUS_WAIT ;
 int M_WAITOK ;
 int TAILQ_INSERT_TAIL (int *,struct ctl_ha_dt_req*,int ) ;
 int ctl_ha_msg_send (int ,struct ha_dt_msg_wire*,int,int ) ;
 int ctl_ha_msg_send2 (int ,struct ha_dt_msg_wire*,int,int ,int ,int ) ;
 struct ha_softc ha_softc ;
 int links ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

ctl_ha_status
ctl_dt_single(struct ctl_ha_dt_req *req)
{
 struct ha_softc *softc = &ha_softc;
 struct ha_dt_msg_wire wire_dt;
 ctl_ha_status status;

 wire_dt.command = req->command;
 wire_dt.size = req->size;
 wire_dt.local = req->local;
 wire_dt.remote = req->remote;
 if (req->command == CTL_HA_DT_CMD_READ && req->callback != ((void*)0)) {
  mtx_lock(&softc->ha_lock);
  TAILQ_INSERT_TAIL(&softc->ha_dts, req, links);
  mtx_unlock(&softc->ha_lock);
  ctl_ha_msg_send(CTL_HA_CHAN_DATA, &wire_dt, sizeof(wire_dt),
      M_WAITOK);
  return (CTL_HA_STATUS_WAIT);
 }
 if (req->command == CTL_HA_DT_CMD_READ) {
  status = ctl_ha_msg_send(CTL_HA_CHAN_DATA, &wire_dt,
      sizeof(wire_dt), M_WAITOK);
 } else {
  status = ctl_ha_msg_send2(CTL_HA_CHAN_DATA, &wire_dt,
      sizeof(wire_dt), req->local, req->size, M_WAITOK);
 }
 return (status);
}
