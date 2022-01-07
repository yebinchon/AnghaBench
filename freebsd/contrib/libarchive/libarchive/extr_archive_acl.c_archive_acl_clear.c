
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_acl_entry {int name; struct archive_acl_entry* next; } ;
struct archive_acl {scalar_t__ acl_state; scalar_t__ acl_types; int * acl_p; struct archive_acl_entry* acl_text; struct archive_acl_entry* acl_text_w; struct archive_acl_entry* acl_head; } ;


 int archive_mstring_clean (int *) ;
 int free (struct archive_acl_entry*) ;

void
archive_acl_clear(struct archive_acl *acl)
{
 struct archive_acl_entry *ap;

 while (acl->acl_head != ((void*)0)) {
  ap = acl->acl_head->next;
  archive_mstring_clean(&acl->acl_head->name);
  free(acl->acl_head);
  acl->acl_head = ap;
 }
 free(acl->acl_text_w);
 acl->acl_text_w = ((void*)0);
 free(acl->acl_text);
 acl->acl_text = ((void*)0);
 acl->acl_p = ((void*)0);
 acl->acl_types = 0;
 acl->acl_state = 0;
}
