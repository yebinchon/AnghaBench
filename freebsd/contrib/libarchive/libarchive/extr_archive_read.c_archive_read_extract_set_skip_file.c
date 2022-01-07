
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int skip_file_set; void* skip_file_ino; void* skip_file_dev; } ;
struct archive {int dummy; } ;
typedef void* la_int64_t ;


 scalar_t__ ARCHIVE_OK ;
 int ARCHIVE_READ_MAGIC ;
 int ARCHIVE_STATE_ANY ;
 scalar_t__ __archive_check_magic (struct archive*,int ,int ,char*) ;

void
archive_read_extract_set_skip_file(struct archive *_a, la_int64_t d,
    la_int64_t i)
{
 struct archive_read *a = (struct archive_read *)_a;

 if (ARCHIVE_OK != __archive_check_magic(_a, ARCHIVE_READ_MAGIC,
  ARCHIVE_STATE_ANY, "archive_read_extract_set_skip_file"))
  return;
 a->skip_file_set = 1;
 a->skip_file_dev = d;
 a->skip_file_ino = i;
}
