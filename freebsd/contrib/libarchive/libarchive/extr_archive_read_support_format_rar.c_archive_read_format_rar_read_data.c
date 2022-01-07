
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rar {scalar_t__ has_encrypted_entries; scalar_t__ bytes_unconsumed; scalar_t__ offset_seek; scalar_t__ unp_size; scalar_t__ offset; int compression_method; int start_new_table; int ppmd_valid; int ppmd7_context; scalar_t__ entry_eof; } ;
struct archive_read {int archive; TYPE_1__* format; } ;
typedef scalar_t__ int64_t ;
struct TYPE_4__ {int (* Ppmd7_Free ) (int *) ;} ;
struct TYPE_3__ {scalar_t__ data; } ;


 int ARCHIVE_EOF ;
 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 scalar_t__ ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW ;
 int ARCHIVE_WARN ;






 TYPE_2__ __archive_ppmd7_functions ;
 int __archive_read_consume (struct archive_read*,scalar_t__) ;
 int archive_set_error (int *,int ,char*) ;
 int read_data_compressed (struct archive_read*,void const**,size_t*,scalar_t__*) ;
 int read_data_stored (struct archive_read*,void const**,size_t*,scalar_t__*) ;
 int stub1 (int *) ;

__attribute__((used)) static int
archive_read_format_rar_read_data(struct archive_read *a, const void **buff,
                                  size_t *size, int64_t *offset)
{
  struct rar *rar = (struct rar *)(a->format->data);
  int ret;

  if (rar->has_encrypted_entries == ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW) {
   rar->has_encrypted_entries = 0;
  }

  if (rar->bytes_unconsumed > 0) {

      __archive_read_consume(a, rar->bytes_unconsumed);
      rar->bytes_unconsumed = 0;
  }

  *buff = ((void*)0);
  if (rar->entry_eof || rar->offset_seek >= rar->unp_size) {
    *size = 0;
    *offset = rar->offset;
    if (*offset < rar->unp_size)
      *offset = rar->unp_size;
    return (ARCHIVE_EOF);
  }

  switch (rar->compression_method)
  {
  case 128:
    ret = read_data_stored(a, buff, size, offset);
    break;

  case 131:
  case 132:
  case 129:
  case 130:
  case 133:
    ret = read_data_compressed(a, buff, size, offset);
    if (ret != ARCHIVE_OK && ret != ARCHIVE_WARN) {
      __archive_ppmd7_functions.Ppmd7_Free(&rar->ppmd7_context);
      rar->start_new_table = 1;
      rar->ppmd_valid = 0;
    }
    break;

  default:
    archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
                      "Unsupported compression method for RAR file.");
    ret = ARCHIVE_FATAL;
    break;
  }
  return (ret);
}
