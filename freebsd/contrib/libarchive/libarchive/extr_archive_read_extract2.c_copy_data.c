
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_extract {int extract_progress_user_data; int (* extract_progress ) (int ) ;} ;
struct archive_read {int dummy; } ;
struct archive {int dummy; } ;
typedef int int64_t ;


 int ARCHIVE_EOF ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 struct archive_read_extract* __archive_read_get_extract (struct archive_read*) ;
 int archive_errno (struct archive*) ;
 int archive_error_string (struct archive*) ;
 int archive_read_data_block (struct archive*,void const**,size_t*,int *) ;
 int archive_set_error (struct archive*,int ,char*,int ) ;
 scalar_t__ archive_write_data_block (struct archive*,void const*,size_t,int ) ;
 int stub1 (int ) ;

__attribute__((used)) static int
copy_data(struct archive *ar, struct archive *aw)
{
 int64_t offset;
 const void *buff;
 struct archive_read_extract *extract;
 size_t size;
 int r;

 extract = __archive_read_get_extract((struct archive_read *)ar);
 if (extract == ((void*)0))
  return (ARCHIVE_FATAL);
 for (;;) {
  r = archive_read_data_block(ar, &buff, &size, &offset);
  if (r == ARCHIVE_EOF)
   return (ARCHIVE_OK);
  if (r != ARCHIVE_OK)
   return (r);
  r = (int)archive_write_data_block(aw, buff, size, offset);
  if (r < ARCHIVE_WARN)
   r = ARCHIVE_WARN;
  if (r < ARCHIVE_OK) {
   archive_set_error(ar, archive_errno(aw),
       "%s", archive_error_string(aw));
   return (r);
  }
  if (extract->extract_progress)
   (extract->extract_progress)
       (extract->extract_progress_user_data);
 }
}
