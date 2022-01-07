
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct archive_string {int s; } ;
struct TYPE_3__ {int state; } ;
struct archive_read_disk {TYPE_1__ archive; } ;
struct archive {int dummy; } ;


 scalar_t__ ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_READ_DISK_MAGIC ;
 int ARCHIVE_STATE_CLOSED ;
 int ARCHIVE_STATE_FATAL ;
 int ARCHIVE_STATE_NEW ;
 scalar_t__ ENOMEM ;
 int _archive_read_disk_open (struct archive*,int ) ;
 int archive_check_magic (struct archive*,int ,int,char*) ;
 int archive_clear_error (TYPE_1__*) ;
 int archive_set_error (TYPE_1__*,scalar_t__,char*) ;
 scalar_t__ archive_string_append_from_wcs (struct archive_string*,int const*,int ) ;
 int archive_string_free (struct archive_string*) ;
 int archive_string_init (struct archive_string*) ;
 scalar_t__ errno ;
 int wcslen (int const*) ;

int
archive_read_disk_open_w(struct archive *_a, const wchar_t *pathname)
{
 struct archive_read_disk *a = (struct archive_read_disk *)_a;
 struct archive_string path;
 int ret;

 archive_check_magic(_a, ARCHIVE_READ_DISK_MAGIC,
     ARCHIVE_STATE_NEW | ARCHIVE_STATE_CLOSED,
     "archive_read_disk_open_w");
 archive_clear_error(&a->archive);


 archive_string_init(&path);
 if (archive_string_append_from_wcs(&path, pathname,
     wcslen(pathname)) != 0) {
  if (errno == ENOMEM)
   archive_set_error(&a->archive, ENOMEM,
       "Can't allocate memory");
  else
   archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
       "Can't convert a path to a char string");
  a->archive.state = ARCHIVE_STATE_FATAL;
  ret = ARCHIVE_FATAL;
 } else
  ret = _archive_read_disk_open(_a, path.s);

 archive_string_free(&path);
 return (ret);
}
