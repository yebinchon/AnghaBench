
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ccb {int csio; } ;
typedef int u_int8_t ;
struct scsi_send_key_data_rpc {int region_code; int data_len; } ;
struct scsi_report_key_data_key1_key2 {int key1; int data_len; } ;
struct scsi_report_key_data_challenge {int challenge_key; int data_len; } ;
struct dvd_authinfo {int format; int agid; int region; int keychal; } ;
struct cam_periph {int dummy; } ;


 int CAM_PRIORITY_NORMAL ;
 int CAM_RETRY_SELTO ;



 int EINVAL ;
 int MSG_SIMPLE_Q_TAG ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
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
 void* malloc (int,int ,int) ;
 int min (int,int) ;
 int scsi_send_key (int *,int ,int *,int ,int ,int,int *,int,int ,int) ;
 int scsi_ulto2b (int,int ) ;
 int xpt_release_ccb (union ccb*) ;

__attribute__((used)) static int
cdsendkey(struct cam_periph *periph, struct dvd_authinfo *authinfo)
{
 union ccb *ccb;
 u_int8_t *databuf;
 int length;
 int error;

 error = 0;
 databuf = ((void*)0);

 switch(authinfo->format) {
 case 130: {
  struct scsi_report_key_data_challenge *challenge_data;

  length = sizeof(*challenge_data);

  challenge_data = malloc(length, M_DEVBUF, M_WAITOK | M_ZERO);

  databuf = (u_int8_t *)challenge_data;

  scsi_ulto2b(length - sizeof(challenge_data->data_len),
       challenge_data->data_len);

  bcopy(authinfo->keychal, challenge_data->challenge_key,
        min(sizeof(authinfo->keychal),
     sizeof(challenge_data->challenge_key)));
  break;
 }
 case 129: {
  struct scsi_report_key_data_key1_key2 *key2_data;

  length = sizeof(*key2_data);

  key2_data = malloc(length, M_DEVBUF, M_WAITOK | M_ZERO);

  databuf = (u_int8_t *)key2_data;

  scsi_ulto2b(length - sizeof(key2_data->data_len),
       key2_data->data_len);

  bcopy(authinfo->keychal, key2_data->key1,
        min(sizeof(authinfo->keychal), sizeof(key2_data->key1)));

  break;
 }
 case 128: {
  struct scsi_send_key_data_rpc *rpc_data;

  length = sizeof(*rpc_data);

  rpc_data = malloc(length, M_DEVBUF, M_WAITOK | M_ZERO);

  databuf = (u_int8_t *)rpc_data;

  scsi_ulto2b(length - sizeof(rpc_data->data_len),
       rpc_data->data_len);

  rpc_data->region_code = authinfo->region;
  break;
 }
 default:
  return (EINVAL);
 }

 cam_periph_lock(periph);
 ccb = cam_periph_getccb(periph, CAM_PRIORITY_NORMAL);

 scsi_send_key(&ccb->csio,
                      cd_retry_count,
                     ((void*)0),
                         MSG_SIMPLE_Q_TAG,
                   authinfo->agid,
                         authinfo->format,
                       databuf,
                        length,
                        SSD_FULL_SIZE,
                      50000);

 error = cdrunccb(ccb, cderror, CAM_RETRY_SELTO,
                   SF_RETRY_UA);

 xpt_release_ccb(ccb);
 cam_periph_unlock(periph);

 if (databuf != ((void*)0))
  free(databuf, M_DEVBUF);

 return(error);
}
