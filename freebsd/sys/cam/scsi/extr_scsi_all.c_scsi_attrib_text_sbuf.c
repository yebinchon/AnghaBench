
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_mam_attribute_header {char* attribute; int id; int length; } ;
struct sbuf {int dummy; } ;


 int MIN (size_t,int) ;
 int SCSI_ATTR_OUTPUT_TEXT_MASK ;
 int SCSI_ATTR_OUTPUT_TEXT_RAW ;
 int sbuf_printf (struct sbuf*,char*,unsigned char) ;
 int sbuf_putc (struct sbuf*,char) ;
 int scsi_2btoul (int ) ;
 int snprintf (char*,int,char*,int,size_t,int) ;

int
scsi_attrib_text_sbuf(struct sbuf *sb, struct scsi_mam_attribute_header *hdr,
        uint32_t valid_len, uint32_t flags,
        uint32_t output_flags, char *error_str,
        int error_str_len)
{
 size_t avail_len;
 uint32_t field_size, print_size;
 int retval = 0;
 int esc_text = 1;

 avail_len = valid_len - sizeof(*hdr);
 field_size = scsi_2btoul(hdr->length);
 print_size = MIN(avail_len, field_size);

 if ((output_flags & SCSI_ATTR_OUTPUT_TEXT_MASK) ==
      SCSI_ATTR_OUTPUT_TEXT_RAW)
  esc_text = 0;

 if (print_size > 0) {
  uint32_t i;

  for (i = 0; i < print_size; i++) {
   if (hdr->attribute[i] == '\0')
    continue;
   else if (((unsigned char)hdr->attribute[i] < 0x80)
         || (esc_text == 0))
    sbuf_putc(sb, hdr->attribute[i]);
   else
    sbuf_printf(sb, "%%%02x",
        (unsigned char)hdr->attribute[i]);
  }
 } else if (avail_len < field_size) {




  if (error_str != ((void*)0)) {
   snprintf(error_str, error_str_len, "Available "
     "length of attribute ID 0x%.4x %zu < field "
     "length %u", scsi_2btoul(hdr->id), avail_len,
     field_size);
  }
  retval = 1;
 }

 return (retval);
}
