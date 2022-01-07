
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_entry {TYPE_1__* xattr_p; } ;
struct TYPE_2__ {char* name; void* value; size_t size; struct TYPE_2__* next; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;

int
archive_entry_xattr_next(struct archive_entry * entry,
 const char **name, const void **value, size_t *size)
{
 if (entry->xattr_p) {
  *name = entry->xattr_p->name;
  *value = entry->xattr_p->value;
  *size = entry->xattr_p->size;

  entry->xattr_p = entry->xattr_p->next;

  return (ARCHIVE_OK);
 } else {
  *name = ((void*)0);
  *value = ((void*)0);
  *size = (size_t)0;
  return (ARCHIVE_WARN);
 }
}
