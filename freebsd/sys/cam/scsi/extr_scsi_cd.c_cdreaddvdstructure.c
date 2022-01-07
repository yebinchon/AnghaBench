
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int resid; } ;
union ccb {TYPE_1__ csio; } ;
typedef int u_int8_t ;
typedef scalar_t__ u_int32_t ;
struct scsi_read_dvd_struct_data_spare_area {int dummy; } ;
struct scsi_read_dvd_struct_data_prot_discid {int dummy; } ;
struct scsi_read_dvd_struct_data_layer_desc {int book_type_version; int disc_size_max_rate; int layer_info; int density; int bca; int end_sector_layer0; int main_data_end; int main_data_start; } ;
struct scsi_read_dvd_struct_data_physical {struct scsi_read_dvd_struct_data_layer_desc layer_desc; } ;
struct scsi_read_dvd_struct_data_medium_status {int dummy; } ;
struct scsi_read_dvd_struct_data_manufacturer {int dummy; } ;
struct scsi_read_dvd_struct_data_leadin {int dummy; } ;
struct scsi_read_dvd_struct_data_header {int dummy; } ;
struct scsi_read_dvd_struct_data_disc_key_blk {int dummy; } ;
struct scsi_read_dvd_struct_data_disc_key {int dummy; } ;
struct scsi_read_dvd_struct_data_disc_id {int dummy; } ;
struct scsi_read_dvd_struct_data_dds {int dummy; } ;
struct scsi_read_dvd_struct_data_copyright {int region_info; int cps_type; } ;
struct scsi_read_dvd_struct_data_bca {int dummy; } ;
struct dvd_struct {int length; int data; int rmi; int cpst; int format; int agid; int layer_num; } ;
struct dvd_layer {int book_type; int book_version; int disc_size; int max_rate; int nlayers; int track_path; int layer_type; int linear_density; int track_density; int bca; void* end_sector_l0; void* end_sector; void* start_sector; } ;
struct cam_periph {int dummy; } ;


 int CAM_PRIORITY_NORMAL ;
 int CAM_RETRY_SELTO ;
 int EINVAL ;
 int ENODEV ;
 int MSG_SIMPLE_Q_TAG ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int RDSD_BCA_MASK ;
 int RDSD_BCA_SHIFT ;
 int RDSD_BOOK_TYPE_MASK ;
 int RDSD_BOOK_TYPE_SHIFT ;
 int RDSD_BOOK_VERSION_MASK ;
 int RDSD_DISC_SIZE_MASK ;
 int RDSD_DISC_SIZE_SHIFT ;
 int RDSD_LAYER_TYPE_MASK ;
 int RDSD_LIN_DENSITY_MASK ;
 int RDSD_LIN_DENSITY_SHIFT ;
 int RDSD_MAX_RATE_MASK ;
 int RDSD_NUM_LAYERS_MASK ;
 int RDSD_NUM_LAYERS_SHIFT ;
 int RDSD_TRACK_DENSITY_MASK ;
 int RDSD_TRACK_PATH_MASK ;
 int RDSD_TRACK_PATH_SHIFT ;
 int SF_RETRY_UA ;
 int SSD_FULL_SIZE ;
 int bcopy (int *,int ,int ) ;
 union ccb* cam_periph_getccb (struct cam_periph*,int ) ;
 int cam_periph_lock (struct cam_periph*) ;
 int cam_periph_unlock (struct cam_periph*) ;
 int cd_retry_count ;
 int cderror ;
 int cdrunccb (union ccb*,int ,int ,int ) ;
 int free (int *,int ) ;
 int * malloc (int,int ,int) ;
 int min (int,int) ;
 void* scsi_3btoul (int ) ;
 int scsi_read_dvd_structure (TYPE_1__*,int ,int *,int ,scalar_t__,int ,int ,int ,int *,int,int ,int) ;
 int xpt_release_ccb (union ccb*) ;

__attribute__((used)) static int
cdreaddvdstructure(struct cam_periph *periph, struct dvd_struct *dvdstruct)
{
 union ccb *ccb;
 u_int8_t *databuf;
 u_int32_t address;
 int error;
 int length;

 error = 0;
 databuf = ((void*)0);

 address = 0;

 switch(dvdstruct->format) {
 case 134:
  length = sizeof(struct scsi_read_dvd_struct_data_physical);
  break;
 case 142:
  length = sizeof(struct scsi_read_dvd_struct_data_copyright);
  break;
 case 139:
  length = sizeof(struct scsi_read_dvd_struct_data_disc_key);
  break;
 case 144:
  length = sizeof(struct scsi_read_dvd_struct_data_bca);
  break;
 case 136:
  length = sizeof(struct scsi_read_dvd_struct_data_manufacturer);
  break;
 case 143:
  return (ENODEV);
 case 132:
  length = sizeof(struct scsi_read_dvd_struct_data_prot_discid);
  break;
 case 138:
  length = sizeof(struct scsi_read_dvd_struct_data_disc_key_blk);
  break;
 case 140:
  length = sizeof(struct scsi_read_dvd_struct_data_dds);
  break;
 case 135:
  length = sizeof(struct scsi_read_dvd_struct_data_medium_status);
  break;
 case 129:
  length = sizeof(struct scsi_read_dvd_struct_data_spare_area);
  break;
 case 131:
  return (ENODEV);
 case 130:
  return (ENODEV);
 case 133:
  length = sizeof(struct scsi_read_dvd_struct_data_leadin);
  break;
 case 128:
  length = sizeof(struct scsi_read_dvd_struct_data_disc_id);
  break;
 case 141:
  return (ENODEV);
 case 137:







  length = 65535;
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

 scsi_read_dvd_structure(&ccb->csio,
                  cd_retry_count,
                 ((void*)0),
                     MSG_SIMPLE_Q_TAG,
              address,
                       dvdstruct->layer_num,
                     dvdstruct->format,
               dvdstruct->agid,
                   databuf,
                    length,
                    SSD_FULL_SIZE,
                  50000);

 error = cdrunccb(ccb, cderror, CAM_RETRY_SELTO,
                   SF_RETRY_UA);

 if (error != 0)
  goto bailout;

 switch(dvdstruct->format) {
 case 134: {
  struct scsi_read_dvd_struct_data_layer_desc *inlayer;
  struct dvd_layer *outlayer;
  struct scsi_read_dvd_struct_data_physical *phys_data;

  phys_data =
   (struct scsi_read_dvd_struct_data_physical *)databuf;
  inlayer = &phys_data->layer_desc;
  outlayer = (struct dvd_layer *)&dvdstruct->data;

  dvdstruct->length = sizeof(*inlayer);

  outlayer->book_type = (inlayer->book_type_version &
   RDSD_BOOK_TYPE_MASK) >> RDSD_BOOK_TYPE_SHIFT;
  outlayer->book_version = (inlayer->book_type_version &
   RDSD_BOOK_VERSION_MASK);
  outlayer->disc_size = (inlayer->disc_size_max_rate &
   RDSD_DISC_SIZE_MASK) >> RDSD_DISC_SIZE_SHIFT;
  outlayer->max_rate = (inlayer->disc_size_max_rate &
   RDSD_MAX_RATE_MASK);
  outlayer->nlayers = (inlayer->layer_info &
   RDSD_NUM_LAYERS_MASK) >> RDSD_NUM_LAYERS_SHIFT;
  outlayer->track_path = (inlayer->layer_info &
   RDSD_TRACK_PATH_MASK) >> RDSD_TRACK_PATH_SHIFT;
  outlayer->layer_type = (inlayer->layer_info &
   RDSD_LAYER_TYPE_MASK);
  outlayer->linear_density = (inlayer->density &
   RDSD_LIN_DENSITY_MASK) >> RDSD_LIN_DENSITY_SHIFT;
  outlayer->track_density = (inlayer->density &
   RDSD_TRACK_DENSITY_MASK);
  outlayer->bca = (inlayer->bca & RDSD_BCA_MASK) >>
   RDSD_BCA_SHIFT;
  outlayer->start_sector = scsi_3btoul(inlayer->main_data_start);
  outlayer->end_sector = scsi_3btoul(inlayer->main_data_end);
  outlayer->end_sector_l0 =
   scsi_3btoul(inlayer->end_sector_layer0);
  break;
 }
 case 142: {
  struct scsi_read_dvd_struct_data_copyright *copy_data;

  copy_data = (struct scsi_read_dvd_struct_data_copyright *)
   databuf;

  dvdstruct->cpst = copy_data->cps_type;
  dvdstruct->rmi = copy_data->region_info;
  dvdstruct->length = 0;

  break;
 }
 default:




  dvdstruct->length = length - ccb->csio.resid -
   sizeof(struct scsi_read_dvd_struct_data_header);





  bcopy(databuf + sizeof(struct scsi_read_dvd_struct_data_header),
        dvdstruct->data,
        min(sizeof(dvdstruct->data), dvdstruct->length));
  break;
 }

bailout:
 xpt_release_ccb(ccb);
 cam_periph_unlock(periph);

 if (databuf != ((void*)0))
  free(databuf, M_DEVBUF);

 return(error);
}
