
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_acl_entry {struct archive_acl_entry* next; int name; int id; int tag; int permset; int type; } ;
struct archive_acl {struct archive_acl_entry* acl_head; int mode; } ;


 struct archive_acl_entry* acl_new_entry (struct archive_acl*,int ,int ,int ,int ) ;
 int archive_acl_clear (struct archive_acl*) ;
 int archive_mstring_copy (int *,int *) ;

void
archive_acl_copy(struct archive_acl *dest, struct archive_acl *src)
{
 struct archive_acl_entry *ap, *ap2;

 archive_acl_clear(dest);

 dest->mode = src->mode;
 ap = src->acl_head;
 while (ap != ((void*)0)) {
  ap2 = acl_new_entry(dest,
      ap->type, ap->permset, ap->tag, ap->id);
  if (ap2 != ((void*)0))
   archive_mstring_copy(&ap2->name, &ap->name);
  ap = ap->next;
 }
}
