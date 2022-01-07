
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_lzop {int compression_level; int * pdata; } ;
struct archive_write_filter {char* name; int free; int close; int write; int options; int open; struct write_lzop* data; int code; } ;
struct archive {int dummy; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_FILTER_LZOP ;
 int ARCHIVE_OK ;
 int ARCHIVE_STATE_NEW ;
 int ARCHIVE_WARN ;
 int ARCHIVE_WRITE_MAGIC ;
 int ENOMEM ;
 scalar_t__ LZO_E_OK ;
 struct archive_write_filter* __archive_write_allocate_filter (struct archive*) ;
 int * __archive_write_program_allocate (char*) ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_set_error (struct archive*,int ,char*,...) ;
 int archive_write_lzop_close ;
 int archive_write_lzop_free ;
 int archive_write_lzop_open ;
 int archive_write_lzop_options ;
 int archive_write_lzop_write ;
 struct write_lzop* calloc (int,int) ;
 int free (struct write_lzop*) ;
 scalar_t__ lzo_init () ;
 int lzo_version () ;
 int lzo_version_string () ;

int
archive_write_add_filter_lzop(struct archive *_a)
{
 struct archive_write_filter *f = __archive_write_allocate_filter(_a);
 struct write_lzop *data;

 archive_check_magic(_a, ARCHIVE_WRITE_MAGIC,
     ARCHIVE_STATE_NEW, "archive_write_add_filter_lzop");

 data = calloc(1, sizeof(*data));
 if (data == ((void*)0)) {
  archive_set_error(_a, ENOMEM, "Can't allocate memory");
  return (ARCHIVE_FATAL);
 }

 f->name = "lzop";
 f->code = ARCHIVE_FILTER_LZOP;
 f->data = data;
 f->open = archive_write_lzop_open;
 f->options = archive_write_lzop_options;
 f->write = archive_write_lzop_write;
 f->close = archive_write_lzop_close;
 f->free = archive_write_lzop_free;
 data->pdata = __archive_write_program_allocate("lzop");
 if (data->pdata == ((void*)0)) {
  free(data);
  archive_set_error(_a, ENOMEM, "Can't allocate memory");
  return (ARCHIVE_FATAL);
 }
 data->compression_level = 0;


 archive_set_error(_a, ARCHIVE_ERRNO_MISC,
     "Using external lzop program for lzop compression");
 return (ARCHIVE_WARN);

}
