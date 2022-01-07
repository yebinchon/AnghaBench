
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dir; scalar_t__ unpacked_size; int eof; scalar_t__ bytes_remaining; } ;
struct TYPE_3__ {scalar_t__ last_write_ptr; } ;
struct rar5 {TYPE_2__ file; TYPE_1__ cstate; int skip_mode; } ;
struct archive_read {int archive; } ;
typedef int int64_t ;


 int ARCHIVE_EOF ;
 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_ERRNO_PROGRAMMER ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int archive_set_error (int *,int ,char*) ;
 int do_unpack (struct archive_read*,struct rar5*,void const**,size_t*,int *) ;
 struct rar5* get_context (struct archive_read*) ;
 int use_data (struct rar5*,void const**,size_t*,int *) ;
 int verify_global_checksums (struct archive_read*) ;

__attribute__((used)) static int rar5_read_data(struct archive_read *a, const void **buff,
    size_t *size, int64_t *offset) {
 int ret;
 struct rar5* rar = get_context(a);

 if(rar->file.dir > 0) {




  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "Can't decompress an entry marked as a directory");
  return ARCHIVE_FAILED;
 }

 if(!rar->skip_mode && (rar->cstate.last_write_ptr > rar->file.unpacked_size)) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_PROGRAMMER,
      "Unpacker has written too many bytes");
  return ARCHIVE_FATAL;
 }

 ret = use_data(rar, buff, size, offset);
 if(ret == ARCHIVE_OK) {
  return ret;
 }

 if(rar->file.eof == 1) {
  return ARCHIVE_EOF;
 }

 ret = do_unpack(a, rar, buff, size, offset);
 if(ret != ARCHIVE_OK) {
  return ret;
 }

 if(rar->file.bytes_remaining == 0 &&
   rar->cstate.last_write_ptr == rar->file.unpacked_size)
 {
  rar->file.eof = 1;
  return verify_global_checksums(a);
 }

 return ARCHIVE_OK;
}
