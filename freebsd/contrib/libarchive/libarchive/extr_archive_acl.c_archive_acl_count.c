
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_acl_entry {int type; struct archive_acl_entry* next; } ;
struct archive_acl {struct archive_acl_entry* acl_head; } ;


 int ARCHIVE_ENTRY_ACL_TYPE_ACCESS ;

int
archive_acl_count(struct archive_acl *acl, int want_type)
{
 int count;
 struct archive_acl_entry *ap;

 count = 0;
 ap = acl->acl_head;
 while (ap != ((void*)0)) {
  if ((ap->type & want_type) != 0)
   count++;
  ap = ap->next;
 }

 if (count > 0 && ((want_type & ARCHIVE_ENTRY_ACL_TYPE_ACCESS) != 0))
  count += 3;
 return (count);
}
