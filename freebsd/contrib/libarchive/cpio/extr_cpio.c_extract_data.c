
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;
typedef int int64_t ;


 int ARCHIVE_EOF ;
 int ARCHIVE_OK ;
 int archive_errno (struct archive*) ;
 int archive_error_string (struct archive*) ;
 int archive_read_data_block (struct archive*,void const**,size_t*,int *) ;
 scalar_t__ archive_write_data_block (struct archive*,void const*,size_t,int ) ;
 int exit (int) ;
 int lafe_warnc (int ,char*,int ) ;

__attribute__((used)) static int
extract_data(struct archive *ar, struct archive *aw)
{
 int r;
 size_t size;
 const void *block;
 int64_t offset;

 for (;;) {
  r = archive_read_data_block(ar, &block, &size, &offset);
  if (r == ARCHIVE_EOF)
   return (ARCHIVE_OK);
  if (r != ARCHIVE_OK) {
   lafe_warnc(archive_errno(ar),
       "%s", archive_error_string(ar));
   exit(1);
  }
  r = (int)archive_write_data_block(aw, block, size, offset);
  if (r != ARCHIVE_OK) {
   lafe_warnc(archive_errno(aw),
       "%s", archive_error_string(aw));
   return (r);
  }
 }
}
