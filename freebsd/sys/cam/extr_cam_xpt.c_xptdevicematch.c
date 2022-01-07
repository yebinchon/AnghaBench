
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ u_int ;
struct scsi_vpd_device_id {scalar_t__ desc_list; } ;
struct TYPE_9__ {int id_len; int id; } ;
struct TYPE_10__ {TYPE_4__ devid_pat; int inq_pat; } ;
struct device_match_pattern {int flags; scalar_t__ path_id; scalar_t__ target_id; scalar_t__ target_lun; TYPE_5__ data; } ;
struct TYPE_6__ {struct device_match_pattern device_pattern; } ;
struct dev_match_pattern {scalar_t__ type; TYPE_1__ pattern; } ;
struct cam_ed {scalar_t__ lun_id; scalar_t__ device_id_len; scalar_t__ device_id; int inq_data; TYPE_3__* target; } ;
typedef int dev_match_ret ;
typedef int caddr_t ;
struct TYPE_8__ {scalar_t__ target_id; TYPE_2__* bus; } ;
struct TYPE_7__ {scalar_t__ path_id; } ;


 int DEV_MATCH_ANY ;
 scalar_t__ DEV_MATCH_DEVICE ;
 int DEV_MATCH_DEVID ;
 int DEV_MATCH_INQUIRY ;
 int DEV_MATCH_LUN ;
 int DEV_MATCH_NONE ;
 int DEV_MATCH_PATH ;
 scalar_t__ DEV_MATCH_PERIPH ;
 int DEV_MATCH_TARGET ;
 int DM_RET_ACTION_MASK ;
 int DM_RET_COPY ;
 int DM_RET_DESCEND ;
 int DM_RET_ERROR ;
 int DM_RET_NONE ;
 int DM_RET_STOP ;
 scalar_t__ SVPD_DEVICE_ID_HDR_LEN ;
 int * cam_quirkmatch (int ,int ,int,int,int ) ;
 scalar_t__ scsi_devid_match (int *,scalar_t__,int ,int ) ;
 int scsi_static_inquiry_match ;

__attribute__((used)) static dev_match_ret
xptdevicematch(struct dev_match_pattern *patterns, u_int num_patterns,
        struct cam_ed *device)
{
 dev_match_ret retval;
 u_int i;

 retval = DM_RET_NONE;




 if (device == ((void*)0))
  return(DM_RET_ERROR);





 if ((patterns == ((void*)0)) || (num_patterns == 0))
  return(DM_RET_DESCEND | DM_RET_COPY);

 for (i = 0; i < num_patterns; i++) {
  struct device_match_pattern *cur_pattern;
  struct scsi_vpd_device_id *device_id_page;





  if (patterns[i].type != DEV_MATCH_DEVICE) {
   if ((patterns[i].type == DEV_MATCH_PERIPH)
    && ((retval & DM_RET_ACTION_MASK) == DM_RET_NONE))
    retval |= DM_RET_DESCEND;
   continue;
  }

  cur_pattern = &patterns[i].pattern.device_pattern;


  if ((cur_pattern->flags & (DEV_MATCH_INQUIRY|DEV_MATCH_DEVID))
   == (DEV_MATCH_INQUIRY|DEV_MATCH_DEVID))
   return(DM_RET_ERROR);





  if (cur_pattern->flags == DEV_MATCH_ANY)
   goto copy_dev_node;




  if (cur_pattern->flags == DEV_MATCH_NONE)
   continue;

  if (((cur_pattern->flags & DEV_MATCH_PATH) != 0)
   && (cur_pattern->path_id != device->target->bus->path_id))
   continue;

  if (((cur_pattern->flags & DEV_MATCH_TARGET) != 0)
   && (cur_pattern->target_id != device->target->target_id))
   continue;

  if (((cur_pattern->flags & DEV_MATCH_LUN) != 0)
   && (cur_pattern->target_lun != device->lun_id))
   continue;

  if (((cur_pattern->flags & DEV_MATCH_INQUIRY) != 0)
   && (cam_quirkmatch((caddr_t)&device->inq_data,
        (caddr_t)&cur_pattern->data.inq_pat,
        1, sizeof(cur_pattern->data.inq_pat),
        scsi_static_inquiry_match) == ((void*)0)))
   continue;

  device_id_page = (struct scsi_vpd_device_id *)device->device_id;
  if (((cur_pattern->flags & DEV_MATCH_DEVID) != 0)
   && (device->device_id_len < SVPD_DEVICE_ID_HDR_LEN
    || scsi_devid_match((uint8_t *)device_id_page->desc_list,
          device->device_id_len
        - SVPD_DEVICE_ID_HDR_LEN,
          cur_pattern->data.devid_pat.id,
          cur_pattern->data.devid_pat.id_len) != 0))
   continue;

copy_dev_node:





  retval |= DM_RET_COPY;
  if ((retval & DM_RET_ACTION_MASK) == DM_RET_DESCEND)
   return(retval);
 }







 if ((retval & DM_RET_ACTION_MASK) == DM_RET_NONE)
  retval |= DM_RET_STOP;

 return(retval);
}
