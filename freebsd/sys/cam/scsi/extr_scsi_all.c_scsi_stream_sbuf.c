
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sbuf {int dummy; } ;


 int SSD_DESC_STREAM_EOM ;
 int SSD_DESC_STREAM_FM ;
 int SSD_DESC_STREAM_ILI ;
 int sbuf_printf (struct sbuf*,char*,...) ;

void
scsi_stream_sbuf(struct sbuf *sb, uint8_t stream_bits)
{
 int need_comma;

 need_comma = 0;



 sbuf_printf(sb, "Stream Command Sense Data: ");
 if (stream_bits & SSD_DESC_STREAM_FM) {
  sbuf_printf(sb, "Filemark");
  need_comma = 1;
 }

 if (stream_bits & SSD_DESC_STREAM_EOM) {
  sbuf_printf(sb, "%sEOM", (need_comma) ? "," : "");
  need_comma = 1;
 }

 if (stream_bits & SSD_DESC_STREAM_ILI)
  sbuf_printf(sb, "%sILI", (need_comma) ? "," : "");
}
