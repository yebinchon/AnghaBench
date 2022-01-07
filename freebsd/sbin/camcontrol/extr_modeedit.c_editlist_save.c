
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int8_t ;
struct scsi_mode_page_header_sp {int page_length; } ;
struct scsi_mode_page_header {int page_code; size_t page_length; } ;
struct scsi_mode_header_6 {scalar_t__ blk_desc_len; int data_length; scalar_t__ dev_spec; } ;
struct scsi_mode_header_10 {scalar_t__ blk_desc_len; int data_length; scalar_t__ dev_spec; } ;
struct cam_device {scalar_t__ pd_type; } ;
typedef int data ;


 int MAX_DATA_SIZE ;
 size_t MIN (size_t,int) ;
 scalar_t__ PAGE_CTRL_SHIFT ;
 int SMPH_PS ;
 int SMPH_SPF ;
 scalar_t__ SMS_PAGE_CTRL_SAVED ;
 scalar_t__ T_SEQUENTIAL ;
 int bcopy (struct scsi_mode_page_header*,struct scsi_mode_header_6*,int) ;
 int buff_encode_visit (int *,size_t,int ,int ,int ) ;
 int editentry_save ;
 int editlist_changed ;
 struct scsi_mode_page_header* find_mode_page_10 (struct scsi_mode_header_6*) ;
 struct scsi_mode_page_header* find_mode_page_6 (struct scsi_mode_header_6*) ;
 int format ;
 int mode_select (struct cam_device*,int,int,int,int,int,int *,size_t) ;
 int mode_sense (struct cam_device*,int*,int,int ,int,int,int,int,int,int,int *,int) ;
 int scsi_2btoul (int) ;
 int scsi_ulto2b (int ,int) ;

__attribute__((used)) static void
editlist_save(struct cam_device *device, int cdb_len, int dbd, int pc,
    int page, int subpage, int task_attr, int retries, int timeout)
{
 u_int8_t data[MAX_DATA_SIZE];
 u_int8_t *mode_pars;
 struct scsi_mode_page_header *mph;
 struct scsi_mode_page_header_sp *mphsp;
 size_t len, hlen, mphlen;


 if (! editlist_changed)
  return;


 mode_sense(device, &cdb_len, dbd, 0, pc, page, subpage, task_attr,
     retries, timeout, data, sizeof(data));
 if (cdb_len == 6) {
  struct scsi_mode_header_6 *mh =
      (struct scsi_mode_header_6 *)data;
  hlen = sizeof(*mh);

  if (mh->blk_desc_len > 0) {
   bcopy(find_mode_page_6(mh), mh + 1,
       mh->data_length + 1 - hlen -
       mh->blk_desc_len);
   mh->blk_desc_len = 0;
  }
  mh->data_length = 0;
  if (device->pd_type != T_SEQUENTIAL)
   mh->dev_spec = 0;
  mph = find_mode_page_6(mh);
 } else {
  struct scsi_mode_header_10 *mh =
      (struct scsi_mode_header_10 *)data;
  hlen = sizeof(*mh);

  if (scsi_2btoul(mh->blk_desc_len) > 0) {
   bcopy(find_mode_page_10(mh), mh + 1,
       scsi_2btoul(mh->data_length) + 1 - hlen -
       scsi_2btoul(mh->blk_desc_len));
   scsi_ulto2b(0, mh->blk_desc_len);
  }
  scsi_ulto2b(0, mh->data_length);
  if (device->pd_type != T_SEQUENTIAL)
   mh->dev_spec = 0;
  mph = find_mode_page_10(mh);
 }
 if ((mph->page_code & SMPH_SPF) == 0) {
  mphlen = sizeof(*mph);
  mode_pars = (uint8_t *)(mph + 1);
  len = mph->page_length;
 } else {
  mphsp = (struct scsi_mode_page_header_sp *)mph;
  mphlen = sizeof(*mphsp);
  mode_pars = (uint8_t *)(mphsp + 1);
  len = scsi_2btoul(mphsp->page_length);
 }
 len = MIN(len, sizeof(data) - (mode_pars - data));


 buff_encode_visit(mode_pars, len, format, editentry_save, 0);

 mph->page_code &= ~SMPH_PS;






 mode_select(device, cdb_len, (pc << PAGE_CTRL_SHIFT == SMS_PAGE_CTRL_SAVED),
     task_attr, retries, timeout, data, hlen + mphlen + len);
}
