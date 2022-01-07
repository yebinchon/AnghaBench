
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct scsi_mode_page_header_sp {int page_code; int subpage; int page_length; } ;
struct scsi_mode_page_header {int page_code; scalar_t__ page_length; } ;
struct scsi_mode_header_6 {int data_length; int blk_desc_len; } ;
struct scsi_mode_header_10 {int blk_desc_len; int data_length; } ;
struct pagename {char* name; } ;
struct cam_device {int dummy; } ;
typedef int data ;


 char* DEFAULT_SCSI_MODE_DB ;
 scalar_t__ ENOENT ;
 int MAX_DATA_SIZE ;
 int SMPH_SPF ;
 int SMS_ALL_PAGES_PAGE ;
 int SMS_PAGE_CODE ;
 int SMS_SUBPAGE_ALL ;
 scalar_t__ errno ;
 char* getenv (char*) ;
 scalar_t__ load_format (char const*,int ,int ) ;
 int mode_sense (struct cam_device*,int*,int,int ,int,int ,int ,int,int,int,int *,int) ;
 struct pagename* nameentry_lookup (int,int) ;
 int printf (char*,int,...) ;
 int scsi_2btoul (int ) ;
 scalar_t__ verbose ;
 int warn (char*,char const*) ;

void
mode_list(struct cam_device *device, int cdb_len, int dbd, int pc, int subpages,
   int task_attr, int retry_count, int timeout)
{
 u_int8_t data[MAX_DATA_SIZE];
 struct scsi_mode_page_header *mph;
 struct scsi_mode_page_header_sp *mphsp;
 struct pagename *nameentry;
 const char *pagedb_path;
 int len, off, page, subpage;

 if ((pagedb_path = getenv("SCSI_MODES")) == ((void*)0))
  pagedb_path = DEFAULT_SCSI_MODE_DB;

 if (load_format(pagedb_path, 0, 0) != 0 && verbose && errno == ENOENT) {

  warn("cannot open modepage database \"%s\"", pagedb_path);
 }


 mode_sense(device, &cdb_len, dbd, 0, pc, SMS_ALL_PAGES_PAGE,
     subpages ? SMS_SUBPAGE_ALL : 0,
     task_attr, retry_count, timeout, data, sizeof(data));


 if (cdb_len == 6) {
  struct scsi_mode_header_6 *mh =
      (struct scsi_mode_header_6 *)data;
  len = mh->data_length;
  off = sizeof(*mh) + mh->blk_desc_len;
 } else {
  struct scsi_mode_header_10 *mh =
      (struct scsi_mode_header_10 *)data;
  len = scsi_2btoul(mh->data_length);
  off = sizeof(*mh) + scsi_2btoul(mh->blk_desc_len);
 }

 while (off < len) {

  mph = (struct scsi_mode_page_header *)(data + off);

  if ((mph->page_code & SMPH_SPF) == 0) {
   page = mph->page_code & SMS_PAGE_CODE;
   subpage = 0;
   off += sizeof(*mph) + mph->page_length;
  } else {
   mphsp = (struct scsi_mode_page_header_sp *)mph;
   page = mphsp->page_code & SMS_PAGE_CODE;
   subpage = mphsp->subpage;
   off += sizeof(*mphsp) + scsi_2btoul(mphsp->page_length);
  }

  nameentry = nameentry_lookup(page, subpage);
  if (subpage == 0) {
   printf("0x%02x\t%s\n", page,
       nameentry ? nameentry->name : "");
  } else {
   printf("0x%02x,0x%02x\t%s\n", page, subpage,
       nameentry ? nameentry->name : "");
  }
 }
}
