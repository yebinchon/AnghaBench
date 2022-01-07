
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_6__ {int endarc; int vol_no; int volume; } ;
struct TYPE_5__ {int expected_vol_no; } ;
struct TYPE_4__ {int split_after; int split_before; int size; int last_header_id; } ;
struct rar5 {TYPE_3__ main; TYPE_2__ vol; TYPE_1__ generic; } ;
struct archive_read {int archive; } ;
struct archive_entry {int dummy; } ;


 int ARCHIVE_EOF ;
 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_ERRNO_PROGRAMMER ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_RETRY ;
 size_t HFL_SKIP_IF_UNKNOWN ;
 size_t HFL_SPLIT_AFTER ;
 size_t HFL_SPLIT_BEFORE ;
 int UINT_MAX ;
 int archive_set_error (int *,int ,char*) ;
 int consume (struct archive_read*,size_t) ;
 scalar_t__ crc32 (int ,int const*,int) ;
 struct rar5* get_context (struct archive_read*) ;
 int process_head_file (struct archive_read*,struct rar5*,struct archive_entry*,size_t) ;
 int process_head_main (struct archive_read*,struct rar5*,struct archive_entry*,size_t) ;
 int process_head_service (struct archive_read*,struct rar5*,struct archive_entry*,size_t) ;
 int read_ahead (struct archive_read*,size_t,int const**) ;
 int read_u32 (struct archive_read*,scalar_t__*) ;
 int read_var_sized (struct archive_read*,size_t*,size_t*) ;
 int scan_for_signature (struct archive_read*) ;
 int skip_unprocessed_bytes (struct archive_read*) ;

__attribute__((used)) static int process_base_block(struct archive_read* a,
    struct archive_entry* entry)
{
 struct rar5* rar = get_context(a);
 uint32_t hdr_crc, computed_crc;
 size_t raw_hdr_size = 0, hdr_size_len, hdr_size;
 size_t header_id = 0;
 size_t header_flags = 0;
 const uint8_t* p;
 int ret;


 ret = skip_unprocessed_bytes(a);
 if(ret != ARCHIVE_OK)
  return ret;


 if(!read_u32(a, &hdr_crc)) {
  return ARCHIVE_EOF;
 }


 if(!read_var_sized(a, &raw_hdr_size, &hdr_size_len)) {
  return ARCHIVE_EOF;
 }


 if(raw_hdr_size > (2 * 1024 * 1024)) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "Base block header is too large");

  return ARCHIVE_FATAL;
 }

 hdr_size = raw_hdr_size + hdr_size_len;



 if(!read_ahead(a, hdr_size, &p)) {
  return ARCHIVE_EOF;
 }


 computed_crc = (uint32_t) crc32(0, p, (int) hdr_size);
 if(computed_crc != hdr_crc) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "Header CRC error");

  return ARCHIVE_FATAL;
 }


 if(ARCHIVE_OK != consume(a, hdr_size_len)) {
  return ARCHIVE_EOF;
 }

 if(!read_var_sized(a, &header_id, ((void*)0)))
  return ARCHIVE_EOF;

 if(!read_var_sized(a, &header_flags, ((void*)0)))
  return ARCHIVE_EOF;

 rar->generic.split_after = (header_flags & HFL_SPLIT_AFTER) > 0;
 rar->generic.split_before = (header_flags & HFL_SPLIT_BEFORE) > 0;
 rar->generic.size = (int)hdr_size;
 rar->generic.last_header_id = (int)header_id;
 rar->main.endarc = 0;


 enum HEADER_TYPE {
  HEAD_MARK = 0x00, HEAD_MAIN = 0x01, HEAD_FILE = 0x02,
  HEAD_SERVICE = 0x03, HEAD_CRYPT = 0x04, HEAD_ENDARC = 0x05,
  HEAD_UNKNOWN = 0xff,
 };

 switch(header_id) {
  case HEAD_MAIN:
   ret = process_head_main(a, rar, entry, header_flags);




   if(ret == ARCHIVE_OK)
    return ARCHIVE_RETRY;

   return ret;
  case HEAD_SERVICE:
   ret = process_head_service(a, rar, entry, header_flags);
   return ret;
  case HEAD_FILE:
   ret = process_head_file(a, rar, entry, header_flags);
   return ret;
  case HEAD_CRYPT:
   archive_set_error(&a->archive,
       ARCHIVE_ERRNO_FILE_FORMAT,
       "Encryption is not supported");
   return ARCHIVE_FATAL;
  case HEAD_ENDARC:
   rar->main.endarc = 1;





   if(rar->main.volume) {



    ret = scan_for_signature(a);
    if(ret == ARCHIVE_FATAL) {
     return ARCHIVE_EOF;
    } else {
     if(rar->vol.expected_vol_no ==
         UINT_MAX) {
      archive_set_error(&a->archive,
          ARCHIVE_ERRNO_FILE_FORMAT,
          "Header error");
       return ARCHIVE_FATAL;
     }

     rar->vol.expected_vol_no =
         rar->main.vol_no + 1;
     return ARCHIVE_OK;
    }
   } else {
    return ARCHIVE_EOF;
   }
  case HEAD_MARK:
   return ARCHIVE_EOF;
  default:
   if((header_flags & HFL_SKIP_IF_UNKNOWN) == 0) {
    archive_set_error(&a->archive,
        ARCHIVE_ERRNO_FILE_FORMAT,
        "Header type error");
    return ARCHIVE_FATAL;
   } else {



    return ARCHIVE_RETRY;
   }
 }



 archive_set_error(&a->archive, ARCHIVE_ERRNO_PROGRAMMER,
     "Internal unpacker error");
 return ARCHIVE_FATAL;

}
