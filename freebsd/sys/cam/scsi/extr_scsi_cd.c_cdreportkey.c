
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ resid; } ;
union ccb {TYPE_1__ csio; } ;
typedef int u_int8_t ;
typedef scalar_t__ u_int32_t ;
struct scsi_report_key_data_title {int byte0; int title_key; } ;
struct scsi_report_key_data_rpc {int byte4; int rpc_scheme1; int region_mask; } ;
struct scsi_report_key_data_key1_key2 {int key1; } ;
struct scsi_report_key_data_challenge {int challenge_key; } ;
struct scsi_report_key_data_asf {int success; } ;
struct scsi_report_key_data_agid {int agid; } ;
struct dvd_authinfo {int agid; int cpm; int cp_sec; int cgms; int asf; int reg_type; int vend_rsts; int user_rsts; int rpc_scheme; int region; int keychal; int format; scalar_t__ lba; } ;
struct cam_periph {int path; } ;


 int CAM_PRIORITY_NORMAL ;
 int CAM_RETRY_SELTO ;







 int EINVAL ;
 int MSG_SIMPLE_Q_TAG ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int RKD_AGID_MASK ;
 int RKD_AGID_SHIFT ;
 int RKD_ASF_SUCCESS ;
 int RKD_RPC_TYPE_MASK ;
 int RKD_RPC_TYPE_SHIFT ;
 int RKD_RPC_USER_RESET_MASK ;
 int RKD_RPC_VENDOR_RESET_MASK ;
 int RKD_RPC_VENDOR_RESET_SHIFT ;
 int RKD_TITLE_CMGS_MASK ;
 int RKD_TITLE_CMGS_SHIFT ;
 int RKD_TITLE_CPM ;
 int RKD_TITLE_CPM_SHIFT ;
 int RKD_TITLE_CP_SEC ;
 int RKD_TITLE_CP_SEC_SHIFT ;
 int SF_RETRY_UA ;
 int SSD_FULL_SIZE ;
 int bcopy (int ,int ,int ) ;
 union ccb* cam_periph_getccb (struct cam_periph*,int ) ;
 int cam_periph_lock (struct cam_periph*) ;
 int cam_periph_unlock (struct cam_periph*) ;
 int cd_retry_count ;
 int cderror ;
 int cdrunccb (union ccb*,int ,int ,int ) ;
 int free (int *,int ) ;
 int * malloc (int,int ,int) ;
 int min (int,int) ;
 int scsi_report_key (TYPE_1__*,int ,int *,int ,scalar_t__,int,int ,int *,int,int ,int) ;
 int xpt_print (int ,char*,scalar_t__) ;
 int xpt_release_ccb (union ccb*) ;

__attribute__((used)) static int
cdreportkey(struct cam_periph *periph, struct dvd_authinfo *authinfo)
{
 union ccb *ccb;
 u_int8_t *databuf;
 u_int32_t lba;
 int error;
 int length;

 error = 0;
 databuf = ((void*)0);
 lba = 0;

 switch (authinfo->format) {
 case 133:
  length = sizeof(struct scsi_report_key_data_agid);
  break;
 case 131:
  length = sizeof(struct scsi_report_key_data_challenge);
  break;
 case 130:
  length = sizeof(struct scsi_report_key_data_key1_key2);
  break;
 case 128:
  length = sizeof(struct scsi_report_key_data_title);

  lba = authinfo->lba;
  break;
 case 132:
  length = sizeof(struct scsi_report_key_data_asf);
  break;
 case 129:
  length = sizeof(struct scsi_report_key_data_rpc);
  break;
 case 134:
  length = 0;
  break;
 default:
  return (EINVAL);
 }

 if (length != 0) {
  databuf = malloc(length, M_DEVBUF, M_WAITOK | M_ZERO);
 } else
  databuf = ((void*)0);

 cam_periph_lock(periph);
 ccb = cam_periph_getccb(periph, CAM_PRIORITY_NORMAL);

 scsi_report_key(&ccb->csio,
                 cd_retry_count,
                ((void*)0),
                    MSG_SIMPLE_Q_TAG,
             lba,
              authinfo->agid,
                    authinfo->format,
                  databuf,
                   length,
                   SSD_FULL_SIZE,
                 50000);

 error = cdrunccb(ccb, cderror, CAM_RETRY_SELTO,
                   SF_RETRY_UA);

 if (error != 0)
  goto bailout;

 if (ccb->csio.resid != 0) {
  xpt_print(periph->path, "warning, residual for report key "
      "command is %d\n", ccb->csio.resid);
 }

 switch(authinfo->format) {
 case 133: {
  struct scsi_report_key_data_agid *agid_data;

  agid_data = (struct scsi_report_key_data_agid *)databuf;

  authinfo->agid = (agid_data->agid & RKD_AGID_MASK) >>
   RKD_AGID_SHIFT;
  break;
 }
 case 131: {
  struct scsi_report_key_data_challenge *chal_data;

  chal_data = (struct scsi_report_key_data_challenge *)databuf;

  bcopy(chal_data->challenge_key, authinfo->keychal,
        min(sizeof(chal_data->challenge_key),
            sizeof(authinfo->keychal)));
  break;
 }
 case 130: {
  struct scsi_report_key_data_key1_key2 *key1_data;

  key1_data = (struct scsi_report_key_data_key1_key2 *)databuf;

  bcopy(key1_data->key1, authinfo->keychal,
        min(sizeof(key1_data->key1), sizeof(authinfo->keychal)));
  break;
 }
 case 128: {
  struct scsi_report_key_data_title *title_data;

  title_data = (struct scsi_report_key_data_title *)databuf;

  authinfo->cpm = (title_data->byte0 & RKD_TITLE_CPM) >>
   RKD_TITLE_CPM_SHIFT;
  authinfo->cp_sec = (title_data->byte0 & RKD_TITLE_CP_SEC) >>
   RKD_TITLE_CP_SEC_SHIFT;
  authinfo->cgms = (title_data->byte0 & RKD_TITLE_CMGS_MASK) >>
   RKD_TITLE_CMGS_SHIFT;
  bcopy(title_data->title_key, authinfo->keychal,
        min(sizeof(title_data->title_key),
     sizeof(authinfo->keychal)));
  break;
 }
 case 132: {
  struct scsi_report_key_data_asf *asf_data;

  asf_data = (struct scsi_report_key_data_asf *)databuf;

  authinfo->asf = asf_data->success & RKD_ASF_SUCCESS;
  break;
 }
 case 129: {
  struct scsi_report_key_data_rpc *rpc_data;

  rpc_data = (struct scsi_report_key_data_rpc *)databuf;

  authinfo->reg_type = (rpc_data->byte4 & RKD_RPC_TYPE_MASK) >>
   RKD_RPC_TYPE_SHIFT;
  authinfo->vend_rsts =
   (rpc_data->byte4 & RKD_RPC_VENDOR_RESET_MASK) >>
   RKD_RPC_VENDOR_RESET_SHIFT;
  authinfo->user_rsts = rpc_data->byte4 & RKD_RPC_USER_RESET_MASK;
  authinfo->region = rpc_data->region_mask;
  authinfo->rpc_scheme = rpc_data->rpc_scheme1;
  break;
 }
 case 134:
  break;
 default:

  error = EINVAL;
  goto bailout;
  break;
 }

bailout:
 xpt_release_ccb(ccb);
 cam_periph_unlock(periph);

 if (databuf != ((void*)0))
  free(databuf, M_DEVBUF);

 return(error);
}
