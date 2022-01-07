
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccb_scsiio {int dummy; } ;
union ccb {struct ccb_scsiio csio; } ;
typedef int u_int32_t ;
struct scsi_mode_header_6 {int data_length; scalar_t__ medium_type; } ;
struct scsi_mode_header_10 {scalar_t__ medium_type; int data_length; } ;
struct cd_softc {int minimum_command_size; int mode_queue; } ;
struct cd_mode_params {int cdb_size; scalar_t__ mode_buf; int alloc_len; } ;
struct cam_periph {scalar_t__ softc; } ;


 int CAM_PRIORITY_NORMAL ;
 int CAM_RETRY_SELTO ;
 int MSG_SIMPLE_Q_TAG ;
 int SF_RETRY_UA ;
 int SSD_FULL_SIZE ;
 int STAILQ_INSERT_TAIL (int *,struct cd_mode_params*,int ) ;
 int STAILQ_REMOVE (int *,struct cd_mode_params*,int ,int ) ;
 union ccb* cam_periph_getccb (struct cam_periph*,int ) ;
 int cd_mode_params ;
 int cd_retry_count ;
 int cderror ;
 int cdrunccb (union ccb*,int ,int ,int ) ;
 int links ;
 int min (int,int ) ;
 int scsi_2btoul (int ) ;
 int scsi_mode_select_len (struct ccb_scsiio*,int ,int *,int ,int,int ,scalar_t__,int,int,int ,int) ;
 int scsi_ulto2b (int ,int ) ;
 int xpt_release_ccb (union ccb*) ;

__attribute__((used)) static int
cdsetmode(struct cam_periph *periph, struct cd_mode_params *data)
{
 struct ccb_scsiio *csio;
 struct cd_softc *softc;
 union ccb *ccb;
 int cdb_size, param_len;
 int error;

 softc = (struct cd_softc *)periph->softc;

 ccb = cam_periph_getccb(periph, CAM_PRIORITY_NORMAL);

 csio = &ccb->csio;

 error = 0;






 if (data->cdb_size == 10)
  cdb_size = data->cdb_size;
 else
  cdb_size = softc->minimum_command_size;

 if (cdb_size >= 10) {
  struct scsi_mode_header_10 *mode_header;
  u_int32_t data_len;

  mode_header = (struct scsi_mode_header_10 *)data->mode_buf;

  data_len = scsi_2btoul(mode_header->data_length);

  scsi_ulto2b(0, mode_header->data_length);





  mode_header->medium_type = 0;





  param_len = data_len + sizeof(mode_header->data_length);

 } else {
  struct scsi_mode_header_6 *mode_header;

  mode_header = (struct scsi_mode_header_6 *)data->mode_buf;

  param_len = mode_header->data_length + 1;

  mode_header->data_length = 0;





  mode_header->medium_type = 0;
 }


 param_len = min(param_len, data->alloc_len);

 scsi_mode_select_len(csio,
                      cd_retry_count,
                     ((void*)0),
                         MSG_SIMPLE_Q_TAG,
                            1,
                         0,
                        data->mode_buf,
                        param_len,
                               cdb_size,
                        SSD_FULL_SIZE,
                      50000);


 STAILQ_INSERT_TAIL(&softc->mode_queue, data, links);

 error = cdrunccb(ccb, cderror, CAM_RETRY_SELTO,
                   SF_RETRY_UA);

 xpt_release_ccb(ccb);

 STAILQ_REMOVE(&softc->mode_queue, data, cd_mode_params, links);

 return (error);
}
