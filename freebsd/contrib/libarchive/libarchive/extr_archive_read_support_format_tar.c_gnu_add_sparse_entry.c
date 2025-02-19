
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tar {struct sparse_block* sparse_last; struct sparse_block* sparse_list; } ;
struct sparse_block {scalar_t__ remaining; scalar_t__ offset; struct sparse_block* next; } ;
struct archive_read {int archive; } ;
typedef scalar_t__ int64_t ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ENOMEM ;
 scalar_t__ INT64_MAX ;
 int archive_set_error (int *,int ,char*) ;
 scalar_t__ calloc (int,int) ;

__attribute__((used)) static int
gnu_add_sparse_entry(struct archive_read *a, struct tar *tar,
    int64_t offset, int64_t remaining)
{
 struct sparse_block *p;

 p = (struct sparse_block *)calloc(1, sizeof(*p));
 if (p == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM, "Out of memory");
  return (ARCHIVE_FATAL);
 }
 if (tar->sparse_last != ((void*)0))
  tar->sparse_last->next = p;
 else
  tar->sparse_list = p;
 tar->sparse_last = p;
 if (remaining < 0 || offset < 0 || offset > INT64_MAX - remaining) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC, "Malformed sparse map data");
  return (ARCHIVE_FATAL);
 }
 p->offset = offset;
 p->remaining = remaining;
 return (ARCHIVE_OK);
}
