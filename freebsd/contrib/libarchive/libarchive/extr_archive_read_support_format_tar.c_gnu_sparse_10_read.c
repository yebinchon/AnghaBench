
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tar {scalar_t__ entry_bytes_remaining; } ;
struct archive_read {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ int64_t ;


 int ARCHIVE_FATAL ;
 scalar_t__ ARCHIVE_OK ;
 scalar_t__ __archive_read_consume (struct archive_read*,scalar_t__) ;
 scalar_t__ gnu_add_sparse_entry (struct archive_read*,struct tar*,scalar_t__,scalar_t__) ;
 int gnu_clear_sparse_list (struct tar*) ;
 scalar_t__ gnu_sparse_10_atol (struct archive_read*,struct tar*,scalar_t__*,size_t*) ;
 int tar_flush_unconsumed (struct archive_read*,size_t*) ;

__attribute__((used)) static ssize_t
gnu_sparse_10_read(struct archive_read *a, struct tar *tar, size_t *unconsumed)
{
 ssize_t bytes_read;
 int entries;
 int64_t offset, size, to_skip, remaining;


 gnu_clear_sparse_list(tar);

 remaining = tar->entry_bytes_remaining;


 entries = (int)gnu_sparse_10_atol(a, tar, &remaining, unconsumed);
 if (entries < 0)
  return (ARCHIVE_FATAL);

 while (entries-- > 0) {

  offset = gnu_sparse_10_atol(a, tar, &remaining, unconsumed);
  if (offset < 0)
   return (ARCHIVE_FATAL);
  size = gnu_sparse_10_atol(a, tar, &remaining, unconsumed);
  if (size < 0)
   return (ARCHIVE_FATAL);

  if (gnu_add_sparse_entry(a, tar, offset, size) != ARCHIVE_OK)
   return (ARCHIVE_FATAL);
 }

 tar_flush_unconsumed(a, unconsumed);
 bytes_read = (ssize_t)(tar->entry_bytes_remaining - remaining);
 to_skip = 0x1ff & -bytes_read;

 if (to_skip > remaining)
  return (ARCHIVE_FATAL);
 if (to_skip != __archive_read_consume(a, to_skip))
  return (ARCHIVE_FATAL);
 return ((ssize_t)(bytes_read + to_skip));
}
