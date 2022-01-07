
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; } ;
struct archive_write {int (* format_finish_entry ) (struct archive_write*) ;int (* format_close ) (struct archive_write*) ;TYPE_1__ archive; int filter_first; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_STATE_ANY ;
 int ARCHIVE_STATE_CLOSED ;
 int ARCHIVE_STATE_DATA ;
 int ARCHIVE_STATE_FATAL ;
 int ARCHIVE_STATE_NEW ;
 int ARCHIVE_WRITE_MAGIC ;
 int __archive_write_close_filter (int ) ;
 int archive_check_magic (TYPE_1__*,int ,int,char*) ;
 int archive_clear_error (TYPE_1__*) ;
 int stub1 (struct archive_write*) ;
 int stub2 (struct archive_write*) ;

__attribute__((used)) static int
_archive_write_close(struct archive *_a)
{
 struct archive_write *a = (struct archive_write *)_a;
 int r = ARCHIVE_OK, r1 = ARCHIVE_OK;

 archive_check_magic(&a->archive, ARCHIVE_WRITE_MAGIC,
     ARCHIVE_STATE_ANY | ARCHIVE_STATE_FATAL,
     "archive_write_close");
 if (a->archive.state == ARCHIVE_STATE_NEW
     || a->archive.state == ARCHIVE_STATE_CLOSED)
  return (ARCHIVE_OK);

 archive_clear_error(&a->archive);


 if (a->archive.state == ARCHIVE_STATE_DATA
     && a->format_finish_entry != ((void*)0))
  r = ((a->format_finish_entry)(a));



 if (a->format_close != ((void*)0)) {
  r1 = (a->format_close)(a);
  if (r1 < r)
   r = r1;
 }


 r1 = __archive_write_close_filter(a->filter_first);
 if (r1 < r)
  r = r1;

 if (a->archive.state != ARCHIVE_STATE_FATAL)
  a->archive.state = ARCHIVE_STATE_CLOSED;
 return (r);
}
