
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct scsi_sense_progress {int add_sense_code_qual; int add_sense_code; int progress; int sense_key; } ;
struct scsi_sense_desc_header {int dummy; } ;
struct scsi_sense_data {int dummy; } ;
struct scsi_inquiry_data {int dummy; } ;
struct sbuf {int dummy; } ;


 int sbuf_cat (struct sbuf*,char const*) ;
 int sbuf_printf (struct sbuf*,char*,int ,int ,char const*) ;
 int scsi_2btoul (int ) ;
 int scsi_progress_sbuf (struct sbuf*,int) ;
 int scsi_sense_desc (int ,int ,int ,struct scsi_inquiry_data*,char const**,char const**) ;

void
scsi_sense_progress_sbuf(struct sbuf *sb, struct scsi_sense_data *sense,
    u_int sense_len, uint8_t *cdb, int cdb_len,
    struct scsi_inquiry_data *inq_data,
    struct scsi_sense_desc_header *header)
{
 struct scsi_sense_progress *progress;
 const char *sense_key_desc;
 const char *asc_desc;
 int progress_val;

 progress = (struct scsi_sense_progress *)header;






 scsi_sense_desc(progress->sense_key, progress->add_sense_code,
   progress->add_sense_code_qual, inq_data,
   &sense_key_desc, &asc_desc);

 progress_val = scsi_2btoul(progress->progress);





 sbuf_cat(sb, sense_key_desc);
 sbuf_printf(sb, " asc:%x,%x (%s): ", progress->add_sense_code,
      progress->add_sense_code_qual, asc_desc);
 scsi_progress_sbuf(sb, progress_val);
}
