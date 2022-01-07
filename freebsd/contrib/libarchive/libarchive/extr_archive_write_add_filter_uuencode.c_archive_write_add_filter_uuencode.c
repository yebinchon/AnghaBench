
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct private_uuencode {int mode; int name; } ;
struct archive_write_filter {char* name; int free; int close; int write; int options; int open; int code; struct private_uuencode* data; int archive; } ;
struct archive_write {int archive; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_FILTER_UU ;
 int ARCHIVE_OK ;
 int ARCHIVE_STATE_NEW ;
 int ARCHIVE_WRITE_MAGIC ;
 int ENOMEM ;
 struct archive_write_filter* __archive_write_allocate_filter (struct archive*) ;
 int archive_check_magic (int *,int ,int ,char*) ;
 int archive_filter_uuencode_close ;
 int archive_filter_uuencode_free ;
 int archive_filter_uuencode_open ;
 int archive_filter_uuencode_options ;
 int archive_filter_uuencode_write ;
 int archive_set_error (int ,int ,char*) ;
 int archive_strcpy (int *,char*) ;
 scalar_t__ calloc (int,int) ;

int
archive_write_add_filter_uuencode(struct archive *_a)
{
 struct archive_write *a = (struct archive_write *)_a;
 struct archive_write_filter *f = __archive_write_allocate_filter(_a);
 struct private_uuencode *state;

 archive_check_magic(&a->archive, ARCHIVE_WRITE_MAGIC,
     ARCHIVE_STATE_NEW, "archive_write_add_filter_uu");

 state = (struct private_uuencode *)calloc(1, sizeof(*state));
 if (state == ((void*)0)) {
  archive_set_error(f->archive, ENOMEM,
      "Can't allocate data for uuencode filter");
  return (ARCHIVE_FATAL);
 }
 archive_strcpy(&state->name, "-");
 state->mode = 0644;

 f->data = state;
 f->name = "uuencode";
 f->code = ARCHIVE_FILTER_UU;
 f->open = archive_filter_uuencode_open;
 f->options = archive_filter_uuencode_options;
 f->write = archive_filter_uuencode_write;
 f->close = archive_filter_uuencode_close;
 f->free = archive_filter_uuencode_free;

 return (ARCHIVE_OK);
}
