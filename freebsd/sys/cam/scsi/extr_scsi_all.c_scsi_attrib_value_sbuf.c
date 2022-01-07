
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_mam_attribute_header {int byte2; int length; } ;
struct sbuf {int dummy; } ;


 int SCSI_ATTR_FLAG_NONE ;


 int SMA_FORMAT_MASK ;

 int sbuf_trim (struct sbuf*) ;
 int scsi_2btoul (int ) ;
 int scsi_attrib_ascii_sbuf (struct sbuf*,struct scsi_mam_attribute_header*,int ,int ,int ,char*,size_t) ;
 int scsi_attrib_hexdump_sbuf (struct sbuf*,struct scsi_mam_attribute_header*,int ,int ,int ,char*,size_t) ;
 int scsi_attrib_int_sbuf (struct sbuf*,struct scsi_mam_attribute_header*,int ,int ,int ,char*,size_t) ;
 int scsi_attrib_text_sbuf (struct sbuf*,struct scsi_mam_attribute_header*,int ,int ,int ,char*,size_t) ;
 int snprintf (char*,size_t,char*,int) ;

int
scsi_attrib_value_sbuf(struct sbuf *sb, uint32_t valid_len,
   struct scsi_mam_attribute_header *hdr, uint32_t output_flags,
   char *error_str, size_t error_str_len)
{
 int retval;

 switch (hdr->byte2 & SMA_FORMAT_MASK) {
 case 130:
  retval = scsi_attrib_ascii_sbuf(sb, hdr, valid_len,
      SCSI_ATTR_FLAG_NONE, output_flags, error_str,error_str_len);
  break;
 case 129:
  if (scsi_2btoul(hdr->length) <= 8)
   retval = scsi_attrib_int_sbuf(sb, hdr, valid_len,
       SCSI_ATTR_FLAG_NONE, output_flags, error_str,
       error_str_len);
  else
   retval = scsi_attrib_hexdump_sbuf(sb, hdr, valid_len,
       SCSI_ATTR_FLAG_NONE, output_flags, error_str,
       error_str_len);
  break;
 case 128:
  retval = scsi_attrib_text_sbuf(sb, hdr, valid_len,
      SCSI_ATTR_FLAG_NONE, output_flags, error_str,
      error_str_len);
  break;
 default:
  if (error_str != ((void*)0)) {
   snprintf(error_str, error_str_len, "Unknown attribute "
       "format 0x%x", hdr->byte2 & SMA_FORMAT_MASK);
  }
  retval = 1;
  goto bailout;
  break;
 }

 sbuf_trim(sb);

bailout:

 return (retval);
}
