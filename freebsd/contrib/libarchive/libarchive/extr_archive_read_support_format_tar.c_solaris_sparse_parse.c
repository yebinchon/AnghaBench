
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tar {TYPE_1__* sparse_last; } ;
struct archive_read {int dummy; } ;
struct archive_entry {int dummy; } ;
typedef scalar_t__ int64_t ;
struct TYPE_2__ {int hole; } ;


 int ARCHIVE_FATAL ;
 scalar_t__ ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 scalar_t__ gnu_add_sparse_entry (struct archive_read*,struct tar*,scalar_t__,scalar_t__) ;
 scalar_t__ tar_atol10 (char const*,int) ;

__attribute__((used)) static int
solaris_sparse_parse(struct archive_read *a, struct tar *tar,
    struct archive_entry *entry, const char *p)
{
 const char *e;
 int64_t start, end;
 int hole = 1;

 (void)entry;

 end = 0;
 if (*p == ' ')
  p++;
 else
  return (ARCHIVE_WARN);
 for (;;) {
  e = p;
  while (*e != '\0' && *e != ' ') {
   if (*e < '0' || *e > '9')
    return (ARCHIVE_WARN);
   e++;
  }
  start = end;
  end = tar_atol10(p, e - p);
  if (end < 0)
   return (ARCHIVE_WARN);
  if (start < end) {
   if (gnu_add_sparse_entry(a, tar, start,
       end - start) != ARCHIVE_OK)
    return (ARCHIVE_FATAL);
   tar->sparse_last->hole = hole;
  }
  if (*e == '\0')
   return (ARCHIVE_OK);
  p = e + 1;
  hole = hole == 0;
 }
}
