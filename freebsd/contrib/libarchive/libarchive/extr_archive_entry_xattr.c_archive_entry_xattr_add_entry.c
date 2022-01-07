
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {struct ae_xattr* xattr_head; } ;
struct ae_xattr {size_t size; struct ae_xattr* next; int * value; int * name; } ;


 int __archive_errx (int,char*) ;
 int * malloc (size_t) ;
 int memcpy (int *,void const*,size_t) ;
 int * strdup (char const*) ;

void
archive_entry_xattr_add_entry(struct archive_entry *entry,
 const char *name, const void *value, size_t size)
{
 struct ae_xattr *xp;

 if ((xp = (struct ae_xattr *)malloc(sizeof(struct ae_xattr))) == ((void*)0))
  __archive_errx(1, "Out of memory");

 if ((xp->name = strdup(name)) == ((void*)0))
  __archive_errx(1, "Out of memory");

 if ((xp->value = malloc(size)) != ((void*)0)) {
  memcpy(xp->value, value, size);
  xp->size = size;
 } else
  xp->size = 0;

 xp->next = entry->xattr_head;
 entry->xattr_head = xp;
}
