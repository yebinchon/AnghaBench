
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct private_data {int compression_level; int version_number; int block_independence; int stream_checksum; int block_maximum_size; int * pdata; scalar_t__ preset_dictionary; scalar_t__ stream_size; scalar_t__ block_checksum; } ;
struct archive_write_filter {char* name; int code; int * open; int * free; int * close; int * options; struct private_data* data; } ;
struct archive_write {int archive; } ;
struct archive {int dummy; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_FILTER_LZ4 ;
 int ARCHIVE_OK ;
 int ARCHIVE_STATE_NEW ;
 int ARCHIVE_WARN ;
 int ARCHIVE_WRITE_MAGIC ;
 int ENOMEM ;
 struct archive_write_filter* __archive_write_allocate_filter (struct archive*) ;
 int * __archive_write_program_allocate (char*) ;
 int archive_check_magic (int *,int ,int ,char*) ;
 int archive_filter_lz4_close ;
 int archive_filter_lz4_free ;
 int archive_filter_lz4_open ;
 int archive_filter_lz4_options ;
 int archive_set_error (int *,int ,char*) ;
 struct private_data* calloc (int,int) ;
 int free (struct private_data*) ;

int
archive_write_add_filter_lz4(struct archive *_a)
{
 struct archive_write *a = (struct archive_write *)_a;
 struct archive_write_filter *f = __archive_write_allocate_filter(_a);
 struct private_data *data;

 archive_check_magic(&a->archive, ARCHIVE_WRITE_MAGIC,
     ARCHIVE_STATE_NEW, "archive_write_add_filter_lz4");

 data = calloc(1, sizeof(*data));
 if (data == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM, "Out of memory");
  return (ARCHIVE_FATAL);
 }




 data->compression_level = 1;
 data->version_number = 0x01;
 data->block_independence = 1;
 data->block_checksum = 0;
 data->stream_size = 0;
 data->stream_checksum = 1;
 data->preset_dictionary = 0;
 data->block_maximum_size = 7;




 f->data = data;
 f->options = &archive_filter_lz4_options;
 f->close = &archive_filter_lz4_close;
 f->free = &archive_filter_lz4_free;
 f->open = &archive_filter_lz4_open;
 f->code = ARCHIVE_FILTER_LZ4;
 f->name = "lz4";







 data->pdata = __archive_write_program_allocate("lz4");
 if (data->pdata == ((void*)0)) {
  free(data);
  archive_set_error(&a->archive, ENOMEM, "Out of memory");
  return (ARCHIVE_FATAL);
 }
 data->compression_level = 0;
 archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
     "Using external lz4 program");
 return (ARCHIVE_WARN);

}
