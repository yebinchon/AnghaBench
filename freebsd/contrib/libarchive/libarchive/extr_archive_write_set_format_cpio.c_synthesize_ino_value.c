
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpio {size_t ino_list_next; size_t ino_list_size; TYPE_1__* ino_list; scalar_t__ ino_next; } ;
struct archive_entry {int dummy; } ;
typedef scalar_t__ int64_t ;
struct TYPE_2__ {scalar_t__ old; int new; } ;


 scalar_t__ archive_entry_ino64 (struct archive_entry*) ;
 int archive_entry_nlink (struct archive_entry*) ;
 void* realloc (TYPE_1__*,int) ;

__attribute__((used)) static int
synthesize_ino_value(struct cpio *cpio, struct archive_entry *entry)
{
 int64_t ino = archive_entry_ino64(entry);
 int ino_new;
 size_t i;







 if (ino == 0)
  return (0);


 if (archive_entry_nlink(entry) < 2) {
  return (int)(++cpio->ino_next);
 }



 for (i = 0; i < cpio->ino_list_next; ++i) {
  if (cpio->ino_list[i].old == ino)
   return (cpio->ino_list[i].new);
 }


 ino_new = (int)(++cpio->ino_next);


 if (cpio->ino_list_size <= cpio->ino_list_next) {
  size_t newsize = cpio->ino_list_size < 512
      ? 512 : cpio->ino_list_size * 2;
  void *newlist = realloc(cpio->ino_list,
      sizeof(cpio->ino_list[0]) * newsize);
  if (newlist == ((void*)0))
   return (-1);

  cpio->ino_list_size = newsize;
  cpio->ino_list = newlist;
 }


 cpio->ino_list[cpio->ino_list_next].old = ino;
 cpio->ino_list[cpio->ino_list_next].new = ino_new;
 ++cpio->ino_list_next;
 return (ino_new);
}
