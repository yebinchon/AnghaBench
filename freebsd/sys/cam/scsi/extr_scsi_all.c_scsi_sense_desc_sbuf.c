
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t u_int ;
struct scsi_sense_desc_printer {scalar_t__ desc_type; int (* print_func ) (struct sbuf*,struct scsi_sense_data*,size_t,int *,int,struct scsi_inquiry_data*,struct scsi_sense_desc_header*) ;} ;
struct scsi_sense_desc_header {scalar_t__ desc_type; } ;
struct scsi_sense_data {int dummy; } ;
struct scsi_inquiry_data {int dummy; } ;
struct sbuf {int dummy; } ;


 size_t nitems (struct scsi_sense_desc_printer*) ;
 int scsi_sense_generic_sbuf (struct sbuf*,struct scsi_sense_data*,size_t,int *,int,struct scsi_inquiry_data*,struct scsi_sense_desc_header*) ;
 struct scsi_sense_desc_printer* scsi_sense_printers ;
 int stub1 (struct sbuf*,struct scsi_sense_data*,size_t,int *,int,struct scsi_inquiry_data*,struct scsi_sense_desc_header*) ;

void
scsi_sense_desc_sbuf(struct sbuf *sb, struct scsi_sense_data *sense,
       u_int sense_len, uint8_t *cdb, int cdb_len,
       struct scsi_inquiry_data *inq_data,
       struct scsi_sense_desc_header *header)
{
 u_int i;

 for (i = 0; i < nitems(scsi_sense_printers); i++) {
  struct scsi_sense_desc_printer *printer;

  printer = &scsi_sense_printers[i];





  if (printer->desc_type > header->desc_type)
   break;

  if (printer->desc_type != header->desc_type)
   continue;

  printer->print_func(sb, sense, sense_len, cdb, cdb_len,
        inq_data, header);

  return;
 }




 scsi_sense_generic_sbuf(sb, sense, sense_len, cdb, cdb_len,
    inq_data, header);
}
