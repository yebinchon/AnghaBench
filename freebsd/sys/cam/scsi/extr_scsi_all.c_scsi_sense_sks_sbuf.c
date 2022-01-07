
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct scsi_sense_sks {int* sense_key_spec; } ;
struct scsi_sense_desc_header {int dummy; } ;
struct scsi_sense_data {int dummy; } ;
struct scsi_inquiry_data {int dummy; } ;
struct sbuf {int dummy; } ;


 int SSD_SKS_VALID ;
 int scsi_extract_sense_len (struct scsi_sense_data*,int ,int*,int*,int*,int*,int) ;
 int scsi_sks_sbuf (struct sbuf*,int,int*) ;

void
scsi_sense_sks_sbuf(struct sbuf *sb, struct scsi_sense_data *sense,
      u_int sense_len, uint8_t *cdb, int cdb_len,
      struct scsi_inquiry_data *inq_data,
      struct scsi_sense_desc_header *header)
{
 struct scsi_sense_sks *sks;
 int error_code, sense_key, asc, ascq;

 sks = (struct scsi_sense_sks *)header;

 if ((sks->sense_key_spec[0] & SSD_SKS_VALID) == 0)
  return;

 scsi_extract_sense_len(sense, sense_len, &error_code, &sense_key,
          &asc, &ascq, 1);

 scsi_sks_sbuf(sb, sense_key, sks->sense_key_spec);
}
