
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct private_data {int compression_level; int * pdata; int * cstream; } ;
struct archive_write_filter {char* name; int code; int * free; int * close; int * options; int * open; struct private_data* data; } ;
struct archive_write {int archive; } ;
struct archive {int dummy; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_FILTER_ZSTD ;
 int ARCHIVE_OK ;
 int ARCHIVE_STATE_NEW ;
 int ARCHIVE_WARN ;
 int ARCHIVE_WRITE_MAGIC ;
 int ENOMEM ;
 int * ZSTD_createCStream () ;
 struct archive_write_filter* __archive_write_allocate_filter (struct archive*) ;
 int * __archive_write_program_allocate (char*) ;
 int archive_check_magic (int *,int ,int ,char*) ;
 int archive_compressor_zstd_close ;
 int archive_compressor_zstd_free ;
 int archive_compressor_zstd_open ;
 int archive_compressor_zstd_options ;
 int archive_set_error (int *,int ,char*) ;
 struct private_data* calloc (int,int) ;
 int free (struct private_data*) ;

int
archive_write_add_filter_zstd(struct archive *_a)
{
 struct archive_write *a = (struct archive_write *)_a;
 struct archive_write_filter *f = __archive_write_allocate_filter(_a);
 struct private_data *data;
 archive_check_magic(&a->archive, ARCHIVE_WRITE_MAGIC,
     ARCHIVE_STATE_NEW, "archive_write_add_filter_zstd");

 data = calloc(1, sizeof(*data));
 if (data == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM, "Out of memory");
  return (ARCHIVE_FATAL);
 }
 f->data = data;
 f->open = &archive_compressor_zstd_open;
 f->options = &archive_compressor_zstd_options;
 f->close = &archive_compressor_zstd_close;
 f->free = &archive_compressor_zstd_free;
 f->code = ARCHIVE_FILTER_ZSTD;
 f->name = "zstd";
 data->compression_level = 3;
 data->pdata = __archive_write_program_allocate("zstd");
 if (data->pdata == ((void*)0)) {
  free(data);
  archive_set_error(&a->archive, ENOMEM, "Out of memory");
  return (ARCHIVE_FATAL);
 }
 archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
     "Using external zstd program");
 return (ARCHIVE_WARN);

}
