
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int8_t ;
struct scsi_mode_page_header_sp {int page_length; } ;
struct scsi_mode_page_header {int page_code; size_t page_length; } ;
struct scsi_mode_header_6 {int dummy; } ;
struct scsi_mode_header_10 {int dummy; } ;
struct cam_device {int dummy; } ;
typedef int data ;


 int MAX_DATA_SIZE ;
 size_t MIN (size_t,int) ;
 int SMPH_SPF ;
 struct scsi_mode_page_header* find_mode_page_10 (struct scsi_mode_header_10*) ;
 struct scsi_mode_page_header* find_mode_page_6 (struct scsi_mode_header_6*) ;
 int mode_sense (struct cam_device*,int*,int,int ,int,int,int,int,int,int,int*,int) ;
 int printf (char*,int,char) ;
 int putchar (char) ;
 size_t scsi_2btoul (int ) ;

__attribute__((used)) static void
modepage_dump(struct cam_device *device, int cdb_len, int dbd, int pc,
       int page, int subpage, int task_attr, int retries, int timeout)
{
 u_int8_t data[MAX_DATA_SIZE];
 u_int8_t *mode_pars;
 struct scsi_mode_page_header *mph;
 struct scsi_mode_page_header_sp *mphsp;
 size_t indx, len;

 mode_sense(device, &cdb_len, dbd, 0, pc, page, subpage, task_attr,
     retries, timeout, data, sizeof(data));

 if (cdb_len == 6) {
  struct scsi_mode_header_6 *mh =
      (struct scsi_mode_header_6 *)data;
  mph = find_mode_page_6(mh);
 } else {
  struct scsi_mode_header_10 *mh =
      (struct scsi_mode_header_10 *)data;
  mph = find_mode_page_10(mh);
 }
 if ((mph->page_code & SMPH_SPF) == 0) {
  mode_pars = (uint8_t *)(mph + 1);
  len = mph->page_length;
 } else {
  mphsp = (struct scsi_mode_page_header_sp *)mph;
  mode_pars = (uint8_t *)(mphsp + 1);
  len = scsi_2btoul(mphsp->page_length);
 }
 len = MIN(len, sizeof(data) - (mode_pars - data));


 for (indx = 0; indx < len; indx++) {
  printf("%02x%c",mode_pars[indx],
      (((indx + 1) % 8) == 0) ? '\n' : ' ');
 }
 putchar('\n');
}
