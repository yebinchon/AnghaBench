
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct scsi_mam_attribute_header {int * attribute; int length; } ;
struct sbuf {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int sbuf_hexdump (struct sbuf*,int *,scalar_t__,int *,int ) ;
 int sbuf_printf (struct sbuf*,char*) ;
 scalar_t__ scsi_2btoul (int ) ;

int
scsi_attrib_hexdump_sbuf(struct sbuf *sb, struct scsi_mam_attribute_header *hdr,
    uint32_t valid_len, uint32_t flags,
    uint32_t output_flags, char *error_str,
    int error_str_len)
{
 uint32_t field_size;
 ssize_t avail_len;
 uint32_t print_len;
 uint8_t *num_ptr;
 int retval = 0;

 field_size = scsi_2btoul(hdr->length);
 avail_len = valid_len - sizeof(*hdr);
 print_len = MIN(avail_len, field_size);
 num_ptr = hdr->attribute;

 if (print_len > 0) {
  sbuf_printf(sb, "\n");
  sbuf_hexdump(sb, num_ptr, print_len, ((void*)0), 0);
 }

 return (retval);
}
