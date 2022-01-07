
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int num_matches; struct dev_match_result* matches; } ;
union ccb {TYPE_1__ cdm; } ;
struct scsi_inquiry_data {int dummy; } ;
struct TYPE_11__ {int flags; int ident_data; int inq_data; int protocol; int target_lun; int target_id; int path_id; } ;
struct TYPE_9__ {int target_lun; int target_id; int path_id; int unit_number; int periph_name; } ;
struct TYPE_13__ {int bus_result; TYPE_4__ device_result; TYPE_2__ periph_result; } ;
struct dev_match_result_0x18 {int type; TYPE_6__ result; } ;
struct TYPE_12__ {int flags; int ident_data; int inq_data; int protocol; int target_lun; int target_id; int path_id; } ;
struct TYPE_10__ {int target_lun; int target_id; int path_id; int unit_number; int periph_name; } ;
struct TYPE_14__ {int bus_result; TYPE_5__ device_result; TYPE_3__ periph_result; } ;
struct dev_match_result {int type; TYPE_7__ result; } ;
struct cam_periph_map_info {int dummy; } ;
struct bus_match_result {int dummy; } ;
struct ata_params {int dummy; } ;
typedef int mapinfo ;


 int DEV_IDLEN ;



 int MAXPHYS ;
 int bzero (struct cam_periph_map_info*,int) ;
 int cam_periph_mapmem (union ccb*,struct cam_periph_map_info*,int ) ;
 int cam_periph_unmapmem (union ccb*,struct cam_periph_map_info*) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int
cam_compat_translate_dev_match_0x18(union ccb *ccb)
{
 struct dev_match_result *dm;
 struct dev_match_result_0x18 *dm18;
 struct cam_periph_map_info mapinfo;
 int i;


 bzero(&mapinfo, sizeof(mapinfo));
 cam_periph_mapmem(ccb, &mapinfo, MAXPHYS);

 dm = ccb->cdm.matches;

 dm18 = (struct dev_match_result_0x18 *)(dm);

 for (i = 0; i < ccb->cdm.num_matches; i++) {
  dm18[i].type = dm[i].type;
  switch (dm[i].type) {
  case 128:
   memcpy(&dm18[i].result.periph_result.periph_name,
       &dm[i].result.periph_result.periph_name,
       DEV_IDLEN);
   dm18[i].result.periph_result.unit_number =
      dm[i].result.periph_result.unit_number;
   dm18[i].result.periph_result.path_id =
      dm[i].result.periph_result.path_id;
   dm18[i].result.periph_result.target_id =
      dm[i].result.periph_result.target_id;
   dm18[i].result.periph_result.target_lun =
      dm[i].result.periph_result.target_lun;
   break;
  case 129:
   dm18[i].result.device_result.path_id =
      dm[i].result.device_result.path_id;
   dm18[i].result.device_result.target_id =
      dm[i].result.device_result.target_id;
   dm18[i].result.device_result.target_lun =
      dm[i].result.device_result.target_lun;
   dm18[i].result.device_result.protocol =
      dm[i].result.device_result.protocol;
   memcpy(&dm18[i].result.device_result.inq_data,
       &dm[i].result.device_result.inq_data,
       sizeof(struct scsi_inquiry_data));
   memcpy(&dm18[i].result.device_result.ident_data,
       &dm[i].result.device_result.ident_data,
       sizeof(struct ata_params));
   dm18[i].result.device_result.flags =
      dm[i].result.device_result.flags;
   break;
  case 130:
   memcpy(&dm18[i].result.bus_result,
       &dm[i].result.bus_result,
       sizeof(struct bus_match_result));
   break;
  }
 }

 cam_periph_unmapmem(ccb, &mapinfo);

 return (0);
}
