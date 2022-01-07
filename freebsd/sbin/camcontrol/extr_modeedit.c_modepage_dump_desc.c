
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct scsi_mode_header_6 {size_t blk_desc_len; } ;
struct scsi_mode_header_10 {int blk_desc_len; } ;
struct cam_device {int dummy; } ;
typedef int data ;


 int MAX_DATA_SIZE ;
 size_t MIN (size_t,int) ;
 int mode_sense (struct cam_device*,int*,int ,int,int,int,int,int,int,int,int*,int) ;
 int printf (char*,int,char) ;
 int putchar (char) ;
 size_t scsi_2btoul (int ) ;

__attribute__((used)) static void
modepage_dump_desc(struct cam_device *device, int cdb_len, int llbaa, int pc,
       int page, int subpage, int task_attr, int retries, int timeout)
{
 uint8_t data[MAX_DATA_SIZE];
 uint8_t *desc;
 size_t indx, len;

 mode_sense(device, &cdb_len, 0, llbaa, pc, page, subpage, task_attr,
     retries, timeout, data, sizeof(data));

 if (cdb_len == 6) {
  struct scsi_mode_header_6 *mh =
      (struct scsi_mode_header_6 *)data;
  desc = (uint8_t *)(mh + 1);
  len = mh->blk_desc_len;
 } else {
  struct scsi_mode_header_10 *mh =
      (struct scsi_mode_header_10 *)data;
  desc = (uint8_t *)(mh + 1);
  len = scsi_2btoul(mh->blk_desc_len);
 }
 len = MIN(len, sizeof(data) - (desc - data));


 for (indx = 0; indx < len; indx++) {
  printf("%02x%c", desc[indx],
      (((indx + 1) % 8) == 0) ? '\n' : ' ');
 }
 putchar('\n');
}
