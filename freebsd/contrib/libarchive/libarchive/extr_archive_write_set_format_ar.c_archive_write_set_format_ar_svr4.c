
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* archive_format_name; int archive_format; } ;
struct archive_write {TYPE_1__ archive; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FORMAT_AR_GNU ;
 int ARCHIVE_OK ;
 int ARCHIVE_STATE_NEW ;
 int ARCHIVE_WRITE_MAGIC ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_write_set_format_ar (struct archive_write*) ;

int
archive_write_set_format_ar_svr4(struct archive *_a)
{
 struct archive_write *a = (struct archive_write *)_a;
 int r;

 archive_check_magic(_a, ARCHIVE_WRITE_MAGIC,
     ARCHIVE_STATE_NEW, "archive_write_set_format_ar_svr4");
 r = archive_write_set_format_ar(a);
 if (r == ARCHIVE_OK) {
  a->archive.archive_format = ARCHIVE_FORMAT_AR_GNU;
  a->archive.archive_format_name = "ar (GNU/SVR4)";
 }
 return (r);
}
