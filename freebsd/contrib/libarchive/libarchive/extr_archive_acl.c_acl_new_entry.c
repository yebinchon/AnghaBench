
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_acl_entry {int type; int tag; int id; int permset; struct archive_acl_entry* next; } ;
struct archive_acl {int acl_types; struct archive_acl_entry* acl_head; int * acl_text; int * acl_text_w; } ;





 int ARCHIVE_ENTRY_ACL_INHERITANCE_NFS4 ;


 int ARCHIVE_ENTRY_ACL_PERMS_NFS4 ;
 int ARCHIVE_ENTRY_ACL_PERMS_POSIX1E ;
 int ARCHIVE_ENTRY_ACL_TYPE_NFS4 ;
 int ARCHIVE_ENTRY_ACL_TYPE_POSIX1E ;


 scalar_t__ calloc (int,int) ;
 int free (int *) ;

__attribute__((used)) static struct archive_acl_entry *
acl_new_entry(struct archive_acl *acl,
    int type, int permset, int tag, int id)
{
 struct archive_acl_entry *ap, *aq;




 if (type & ARCHIVE_ENTRY_ACL_TYPE_NFS4) {
  if (acl->acl_types & ~ARCHIVE_ENTRY_ACL_TYPE_NFS4) {
   return (((void*)0));
  }
  if (permset &
      ~(ARCHIVE_ENTRY_ACL_PERMS_NFS4
   | ARCHIVE_ENTRY_ACL_INHERITANCE_NFS4)) {
   return (((void*)0));
  }
 } else if (type & ARCHIVE_ENTRY_ACL_TYPE_POSIX1E) {
  if (acl->acl_types & ~ARCHIVE_ENTRY_ACL_TYPE_POSIX1E) {
   return (((void*)0));
  }
  if (permset & ~ARCHIVE_ENTRY_ACL_PERMS_POSIX1E) {
   return (((void*)0));
  }
 } else {
  return (((void*)0));
 }


 switch (tag) {
 case 129:
 case 128:
 case 133:
 case 132:

  break;
 case 131:
 case 130:

  if (type & ~ARCHIVE_ENTRY_ACL_TYPE_POSIX1E) {
   return (((void*)0));
  }
  break;
 case 134:

  if (type & ~ARCHIVE_ENTRY_ACL_TYPE_NFS4) {
   return (((void*)0));
  }
  break;
 default:

  return (((void*)0));
 }

 free(acl->acl_text_w);
 acl->acl_text_w = ((void*)0);
 free(acl->acl_text);
 acl->acl_text = ((void*)0);







 ap = acl->acl_head;
 aq = ((void*)0);
 while (ap != ((void*)0)) {
  if (((type & ARCHIVE_ENTRY_ACL_TYPE_NFS4) == 0) &&
      ap->type == type && ap->tag == tag && ap->id == id) {
   if (id != -1 || (tag != 129 &&
       tag != 133)) {
    ap->permset = permset;
    return (ap);
   }
  }
  aq = ap;
  ap = ap->next;
 }


 ap = (struct archive_acl_entry *)calloc(1, sizeof(*ap));
 if (ap == ((void*)0))
  return (((void*)0));
 if (aq == ((void*)0))
  acl->acl_head = ap;
 else
  aq->next = ap;
 ap->type = type;
 ap->tag = tag;
 ap->id = id;
 ap->permset = permset;
 acl->acl_types |= type;
 return (ap);
}
