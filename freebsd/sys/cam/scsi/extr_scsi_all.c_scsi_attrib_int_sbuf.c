
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct scsi_mam_attribute_header {int* length; int* id; int* attribute; } ;
struct sbuf {int dummy; } ;


 int SCSI_ATTR_FLAG_DIV_10 ;
 int SCSI_ATTR_FLAG_FP ;
 int SCSI_ATTR_FLAG_FP_1DIGIT ;
 int SCSI_ATTR_FLAG_HEX ;
 int sbuf_printf (struct sbuf*,char*,int,...) ;
 int scsi_2btoul (int*) ;
 int scsi_3btoul (int*) ;
 int scsi_4btoul (int*) ;
 int scsi_8btou64 (int*) ;
 int scsi_attrib_hexdump_sbuf (struct sbuf*,struct scsi_mam_attribute_header*,int,int,int,char*,int) ;
 int snprintf (char*,int,char*,int,size_t,int) ;

int
scsi_attrib_int_sbuf(struct sbuf *sb, struct scsi_mam_attribute_header *hdr,
       uint32_t valid_len, uint32_t flags,
       uint32_t output_flags, char *error_str,
       int error_str_len)
{
 uint64_t print_number;
 size_t avail_len;
 uint32_t number_size;
 int retval = 0;

 number_size = scsi_2btoul(hdr->length);

 avail_len = valid_len - sizeof(*hdr);
 if (avail_len < number_size) {
  if (error_str != ((void*)0)) {
   snprintf(error_str, error_str_len, "Available "
     "length of attribute ID 0x%.4x %zu < field "
     "length %u", scsi_2btoul(hdr->id), avail_len,
     number_size);
  }
  retval = 1;
  goto bailout;
 }

 switch (number_size) {
 case 0:





  goto bailout;
  break;
 case 1:
  print_number = hdr->attribute[0];
  break;
 case 2:
  print_number = scsi_2btoul(hdr->attribute);
  break;
 case 3:
  print_number = scsi_3btoul(hdr->attribute);
  break;
 case 4:
  print_number = scsi_4btoul(hdr->attribute);
  break;
 case 8:
  print_number = scsi_8btou64(hdr->attribute);
  break;
 default:




  retval = scsi_attrib_hexdump_sbuf(sb, hdr, valid_len,
        flags, output_flags,
        error_str, error_str_len);
  goto bailout;
  break;
 }

 if (flags & SCSI_ATTR_FLAG_FP) {

  long double num_float;

  num_float = (long double)print_number;

  if (flags & SCSI_ATTR_FLAG_DIV_10)
   num_float /= 10;

  sbuf_printf(sb, "%.*Lf", (flags & SCSI_ATTR_FLAG_FP_1DIGIT) ?
       1 : 0, num_float);




 } else if (flags & SCSI_ATTR_FLAG_HEX) {
  sbuf_printf(sb, "0x%jx", (uintmax_t)print_number);
 } else
  sbuf_printf(sb, "%ju", (uintmax_t)print_number);

bailout:
 return (retval);
}
