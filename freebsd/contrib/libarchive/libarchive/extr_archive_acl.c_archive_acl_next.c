
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_acl {int acl_state; int mode; TYPE_1__* acl_p; TYPE_1__* acl_head; } ;
struct archive {int dummy; } ;
struct TYPE_2__ {int type; int permset; int tag; int id; struct TYPE_2__* next; int name; } ;




 int ARCHIVE_ENTRY_ACL_TYPE_ACCESS ;

 int ARCHIVE_EOF ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 scalar_t__ ENOMEM ;
 scalar_t__ archive_mstring_get_mbs (struct archive*,int *,char const**) ;
 scalar_t__ errno ;

int
archive_acl_next(struct archive *a, struct archive_acl *acl, int want_type,
    int *type, int *permset, int *tag, int *id, const char **name)
{
 *name = ((void*)0);
 *id = -1;






 if (acl->acl_state == 0)
  return (ARCHIVE_WARN);


 if ((want_type & ARCHIVE_ENTRY_ACL_TYPE_ACCESS) != 0) {
  switch (acl->acl_state) {
  case 128:
   *permset = (acl->mode >> 6) & 7;
   *type = ARCHIVE_ENTRY_ACL_TYPE_ACCESS;
   *tag = 128;
   acl->acl_state = 130;
   return (ARCHIVE_OK);
  case 130:
   *permset = (acl->mode >> 3) & 7;
   *type = ARCHIVE_ENTRY_ACL_TYPE_ACCESS;
   *tag = 130;
   acl->acl_state = 129;
   return (ARCHIVE_OK);
  case 129:
   *permset = acl->mode & 7;
   *type = ARCHIVE_ENTRY_ACL_TYPE_ACCESS;
   *tag = 129;
   acl->acl_state = -1;
   acl->acl_p = acl->acl_head;
   return (ARCHIVE_OK);
  default:
   break;
  }
 }

 while (acl->acl_p != ((void*)0) && (acl->acl_p->type & want_type) == 0)
  acl->acl_p = acl->acl_p->next;
 if (acl->acl_p == ((void*)0)) {
  acl->acl_state = 0;
  *type = 0;
  *permset = 0;
  *tag = 0;
  *id = -1;
  *name = ((void*)0);
  return (ARCHIVE_EOF);
 }
 *type = acl->acl_p->type;
 *permset = acl->acl_p->permset;
 *tag = acl->acl_p->tag;
 *id = acl->acl_p->id;
 if (archive_mstring_get_mbs(a, &acl->acl_p->name, name) != 0) {
  if (errno == ENOMEM)
   return (ARCHIVE_FATAL);
  *name = ((void*)0);
 }
 acl->acl_p = acl->acl_p->next;
 return (ARCHIVE_OK);
}
