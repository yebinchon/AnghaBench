
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct scsi_mode_header_6 {size_t blk_desc_len; scalar_t__ dev_spec; scalar_t__ data_length; } ;
struct scsi_mode_header_10 {scalar_t__ dev_spec; int data_length; int blk_desc_len; } ;
struct cam_device {scalar_t__ pd_type; } ;
typedef int data ;


 int MAX_DATA_SIZE ;
 size_t MIN (size_t,int) ;
 scalar_t__ PAGE_CTRL_SHIFT ;
 scalar_t__ SMS_PAGE_CTRL_SAVED ;
 scalar_t__ T_SEQUENTIAL ;
 int buff_encode_visit (int *,size_t,int ,int ,int ) ;
 int editentry_save ;
 int editlist_changed ;
 int format ;
 int mode_select (struct cam_device*,int,int,int,int,int,int *,size_t) ;
 int mode_sense (struct cam_device*,int*,int ,int,int,int,int,int,int,int,int *,int) ;
 size_t scsi_2btoul (int ) ;
 int scsi_ulto2b (int ,int ) ;

__attribute__((used)) static void
editlist_save_desc(struct cam_device *device, int cdb_len, int llbaa, int pc,
    int page, int subpage, int task_attr, int retries, int timeout)
{
 uint8_t data[MAX_DATA_SIZE];
 uint8_t *desc;
 size_t len, hlen;


 if (! editlist_changed)
  return;


 mode_sense(device, &cdb_len, 0, llbaa, pc, page, subpage, task_attr,
     retries, timeout, data, sizeof(data));


 if (cdb_len == 6) {
  struct scsi_mode_header_6 *mh =
      (struct scsi_mode_header_6 *)data;
  hlen = sizeof(*mh);
  desc = (uint8_t *)(mh + 1);
  len = mh->blk_desc_len;
  mh->data_length = 0;
  if (device->pd_type != T_SEQUENTIAL)
   mh->dev_spec = 0;
 } else {
  struct scsi_mode_header_10 *mh =
      (struct scsi_mode_header_10 *)data;
  hlen = sizeof(*mh);
  desc = (uint8_t *)(mh + 1);
  len = scsi_2btoul(mh->blk_desc_len);
  scsi_ulto2b(0, mh->data_length);
  if (device->pd_type != T_SEQUENTIAL)
   mh->dev_spec = 0;
 }
 len = MIN(len, sizeof(data) - (desc - data));


 buff_encode_visit(desc, len, format, editentry_save, 0);






 mode_select(device, cdb_len, (pc << PAGE_CTRL_SHIFT == SMS_PAGE_CTRL_SAVED),
     task_attr, retries, timeout, data, hlen + len);
}
