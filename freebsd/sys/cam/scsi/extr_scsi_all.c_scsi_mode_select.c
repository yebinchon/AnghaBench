
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
struct ccb_scsiio {int dummy; } ;


 int scsi_mode_select_len (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int,int,int *,int ,int ,int ,int ) ;

void
scsi_mode_select(struct ccb_scsiio *csio, u_int32_t retries,
   void (*cbfcnp)(struct cam_periph *, union ccb *),
   u_int8_t tag_action, int scsi_page_fmt, int save_pages,
   u_int8_t *param_buf, u_int32_t param_len, u_int8_t sense_len,
   u_int32_t timeout)
{
 scsi_mode_select_len(csio, retries, cbfcnp, tag_action,
        scsi_page_fmt, save_pages, param_buf,
        param_len, 0, sense_len, timeout);
}
