
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_mam_attribute_header {int byte2; int length; int id; } ;
struct sbuf {int dummy; } ;


 int SCSI_ATTR_OUTPUT_FIELD_DESC ;
 int SCSI_ATTR_OUTPUT_FIELD_MASK ;
 int SCSI_ATTR_OUTPUT_FIELD_NONE ;
 int SCSI_ATTR_OUTPUT_FIELD_NUM ;
 int SCSI_ATTR_OUTPUT_FIELD_RW ;
 int SCSI_ATTR_OUTPUT_FIELD_SIZE ;
 int SMA_READ_ONLY ;
 int sbuf_printf (struct sbuf*,char*,...) ;
 int scsi_2btoul (int ) ;

void
scsi_attrib_prefix_sbuf(struct sbuf *sb, uint32_t output_flags,
   struct scsi_mam_attribute_header *hdr,
   uint32_t valid_len, const char *desc)
{
 int need_space = 0;
 uint32_t len;
 uint32_t id;





 if (valid_len < sizeof(*hdr))
  return;

 id = scsi_2btoul(hdr->id);
 len = scsi_2btoul(hdr->length);

 if ((output_flags & SCSI_ATTR_OUTPUT_FIELD_MASK) ==
     SCSI_ATTR_OUTPUT_FIELD_NONE)
  return;

 if ((output_flags & SCSI_ATTR_OUTPUT_FIELD_DESC)
  && (desc != ((void*)0))) {
  sbuf_printf(sb, "%s", desc);
  need_space = 1;
 }

 if (output_flags & SCSI_ATTR_OUTPUT_FIELD_NUM) {
  sbuf_printf(sb, "%s(0x%.4x)", (need_space) ? " " : "", id);
  need_space = 0;
 }

 if (output_flags & SCSI_ATTR_OUTPUT_FIELD_SIZE) {
  sbuf_printf(sb, "%s[%d]", (need_space) ? " " : "", len);
  need_space = 0;
 }
 if (output_flags & SCSI_ATTR_OUTPUT_FIELD_RW) {
  sbuf_printf(sb, "%s(%s)", (need_space) ? " " : "",
       (hdr->byte2 & SMA_READ_ONLY) ? "RO" : "RW");
 }
 sbuf_printf(sb, ": ");
}
