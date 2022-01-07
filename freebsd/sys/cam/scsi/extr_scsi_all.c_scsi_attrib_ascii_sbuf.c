
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_mam_attribute_header {int id; int attribute; int length; } ;
struct sbuf {int dummy; } ;
typedef int cam_strvis_flags ;


 int CAM_STRVIS_FLAG_NONASCII_ESC ;
 int CAM_STRVIS_FLAG_NONASCII_RAW ;
 int CAM_STRVIS_FLAG_NONASCII_TRIM ;
 int MIN (size_t,int) ;

 int SCSI_ATTR_OUTPUT_NONASCII_MASK ;


 int cam_strvis_sbuf (struct sbuf*,int ,int,int ) ;
 int scsi_2btoul (int ) ;
 int snprintf (char*,int,char*,int,size_t,int) ;

int
scsi_attrib_ascii_sbuf(struct sbuf *sb, struct scsi_mam_attribute_header *hdr,
         uint32_t valid_len, uint32_t flags,
         uint32_t output_flags, char *error_str,
         int error_str_len)
{
 size_t avail_len;
 uint32_t field_size, print_size;
 int retval = 0;

 avail_len = valid_len - sizeof(*hdr);
 field_size = scsi_2btoul(hdr->length);
 print_size = MIN(avail_len, field_size);

 if (print_size > 0) {
  cam_strvis_flags strvis_flags;

  switch (output_flags & SCSI_ATTR_OUTPUT_NONASCII_MASK) {
  case 128:
   strvis_flags = CAM_STRVIS_FLAG_NONASCII_TRIM;
   break;
  case 129:
   strvis_flags = CAM_STRVIS_FLAG_NONASCII_RAW;
   break;
  case 130:
  default:
   strvis_flags = CAM_STRVIS_FLAG_NONASCII_ESC;
   break;
  }
  cam_strvis_sbuf(sb, hdr->attribute, print_size, strvis_flags);
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
