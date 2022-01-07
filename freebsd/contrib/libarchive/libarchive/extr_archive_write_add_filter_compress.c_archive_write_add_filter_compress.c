
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write_filter {char* name; int code; int * open; } ;
struct archive_write {int archive; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FILTER_COMPRESS ;
 int ARCHIVE_OK ;
 int ARCHIVE_STATE_NEW ;
 int ARCHIVE_WRITE_MAGIC ;
 struct archive_write_filter* __archive_write_allocate_filter (struct archive*) ;
 int archive_check_magic (int *,int ,int ,char*) ;
 int archive_compressor_compress_open ;

int
archive_write_add_filter_compress(struct archive *_a)
{
 struct archive_write *a = (struct archive_write *)_a;
 struct archive_write_filter *f = __archive_write_allocate_filter(_a);

 archive_check_magic(&a->archive, ARCHIVE_WRITE_MAGIC,
     ARCHIVE_STATE_NEW, "archive_write_add_filter_compress");
 f->open = &archive_compressor_compress_open;
 f->code = ARCHIVE_FILTER_COMPRESS;
 f->name = "compress";
 return (ARCHIVE_OK);
}
