
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int u_int ;
struct scsi_sense_fru {scalar_t__ fru; } ;
struct scsi_sense_desc_header {int dummy; } ;
struct scsi_sense_data {int dummy; } ;
struct scsi_inquiry_data {int dummy; } ;
struct sbuf {int dummy; } ;


 int scsi_fru_sbuf (struct sbuf*,int ) ;

void
scsi_sense_fru_sbuf(struct sbuf *sb, struct scsi_sense_data *sense,
      u_int sense_len, uint8_t *cdb, int cdb_len,
      struct scsi_inquiry_data *inq_data,
      struct scsi_sense_desc_header *header)
{
 struct scsi_sense_fru *fru;

 fru = (struct scsi_sense_fru *)header;

 if (fru->fru == 0)
  return;

 scsi_fru_sbuf(sb, (uint64_t)fru->fru);
}
