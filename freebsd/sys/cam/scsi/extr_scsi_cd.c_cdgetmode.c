
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccb_scsiio {int dummy; } ;
union ccb {struct ccb_scsiio csio; } ;
typedef int u_int32_t ;
struct scsi_mode_header_6 {int data_length; } ;
struct scsi_mode_header_10 {int data_length; } ;
struct cd_softc {int minimum_command_size; int mode_queue; } ;
struct cd_mode_params {int cdb_size; int alloc_len; scalar_t__ mode_buf; } ;
struct cd_mode_data_10 {int dummy; } ;
struct cd_mode_data {int dummy; } ;
struct cam_periph {int path; scalar_t__ softc; } ;


 int CAM_PRIORITY_NORMAL ;
 int CAM_RETRY_SELTO ;
 int ENOSPC ;
 int MSG_SIMPLE_Q_TAG ;
 int SF_RETRY_UA ;
 int SMS_PAGE_CTRL_CURRENT ;
 int SSD_FULL_SIZE ;
 int STAILQ_INSERT_TAIL (int *,struct cd_mode_params*,int ) ;
 int STAILQ_REMOVE (int *,struct cd_mode_params*,int ,int ) ;
 union ccb* cam_periph_getccb (struct cam_periph*,int ) ;
 int cd_mode_params ;
 int cd_retry_count ;
 int cderror ;
 int cdrunccb (union ccb*,int ,int ,int ) ;
 int links ;
 int min (int,int) ;
 int scsi_2btoul (int ) ;
 int scsi_mode_sense_len (struct ccb_scsiio*,int ,int *,int ,int ,int ,int,scalar_t__,int,int,int ,int) ;
 int xpt_print (int ,char*,int,int,int) ;
 int xpt_release_ccb (union ccb*) ;

__attribute__((used)) static int
cdgetmode(struct cam_periph *periph, struct cd_mode_params *data,
   u_int32_t page)
{
 struct ccb_scsiio *csio;
 struct cd_softc *softc;
 union ccb *ccb;
 int param_len;
 int error;

 softc = (struct cd_softc *)periph->softc;

 ccb = cam_periph_getccb(periph, CAM_PRIORITY_NORMAL);

 csio = &ccb->csio;

 data->cdb_size = softc->minimum_command_size;
 if (data->cdb_size < 10)
  param_len = sizeof(struct cd_mode_data);
 else
  param_len = sizeof(struct cd_mode_data_10);


 param_len = min(param_len, data->alloc_len);

 scsi_mode_sense_len(csio,
                     cd_retry_count,
                    ((void*)0),
                        MSG_SIMPLE_Q_TAG,
                 0,
                       SMS_PAGE_CTRL_CURRENT,
                  page,
                       data->mode_buf,
                       param_len,
                              softc->minimum_command_size,
                       SSD_FULL_SIZE,
                     50000);
 STAILQ_INSERT_TAIL(&softc->mode_queue, data, links);

 error = cdrunccb(ccb, cderror, CAM_RETRY_SELTO,
                   SF_RETRY_UA);

 xpt_release_ccb(ccb);

 STAILQ_REMOVE(&softc->mode_queue, data, cd_mode_params, links);
 if (error == 0) {
  u_int32_t data_len;

  if (data->cdb_size == 10) {
   struct scsi_mode_header_10 *hdr10;

   hdr10 = (struct scsi_mode_header_10 *)data->mode_buf;
   data_len = scsi_2btoul(hdr10->data_length);
   data_len += sizeof(hdr10->data_length);
  } else {
   struct scsi_mode_header_6 *hdr6;

   hdr6 = (struct scsi_mode_header_6 *)data->mode_buf;
   data_len = hdr6->data_length;
   data_len += sizeof(hdr6->data_length);
  }
  if (data_len > data->alloc_len) {
   xpt_print(periph->path, "allocated modepage %d length "
       "%d < returned length %d\n", page, data->alloc_len,
       data_len);
   error = ENOSPC;
  }
 }
 return (error);
}
