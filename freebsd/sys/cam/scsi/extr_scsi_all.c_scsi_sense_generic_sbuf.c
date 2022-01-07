
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct scsi_sense_desc_header {int length; int desc_type; } ;
struct scsi_sense_data {int dummy; } ;
struct scsi_inquiry_data {int dummy; } ;
struct sbuf {int dummy; } ;


 int sbuf_printf (struct sbuf*,char*,int ) ;

void
scsi_sense_generic_sbuf(struct sbuf *sb, struct scsi_sense_data *sense,
   u_int sense_len, uint8_t *cdb, int cdb_len,
   struct scsi_inquiry_data *inq_data,
   struct scsi_sense_desc_header *header)
{
 int i;
 uint8_t *buf_ptr;

 sbuf_printf(sb, "Descriptor %#x:", header->desc_type);

 buf_ptr = (uint8_t *)&header[1];

 for (i = 0; i < header->length; i++, buf_ptr++)
  sbuf_printf(sb, " %02x", *buf_ptr);
}
