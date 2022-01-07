
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct acl_entry {scalar_t__ ae_tag; int ae_entry_type; void* ae_flags; void* ae_perm; int ae_id; } ;
struct acl {int acl_maxcnt; int acl_cnt; struct acl_entry* acl_entry; } ;
struct TYPE_3__ {int a_flags; int a_access_mask; int a_type; int a_who; } ;
typedef TYPE_1__ ace_t ;




 int ACE_EVERYONE ;
 int ACE_GROUP ;
 int ACE_IDENTIFIER_GROUP ;
 int ACE_OWNER ;


 int ACL_ENTRY_TYPE_ALARM ;
 int ACL_ENTRY_TYPE_ALLOW ;
 int ACL_ENTRY_TYPE_AUDIT ;
 int ACL_ENTRY_TYPE_DENY ;
 scalar_t__ ACL_EVERYONE ;
 scalar_t__ ACL_GROUP ;
 scalar_t__ ACL_GROUP_OBJ ;
 int ACL_MAX_ENTRIES ;
 int ACL_UNDEFINED_ID ;
 scalar_t__ ACL_USER ;
 scalar_t__ ACL_USER_OBJ ;
 int EINVAL ;
 void* _bsd_from_zfs (int,int ) ;
 int bzero (struct acl*,int) ;
 int flags ;
 int panic (char*,int) ;
 int perms ;
 int printf (char*) ;

int
acl_from_aces(struct acl *aclp, const ace_t *aces, int nentries)
{
 int i;
 struct acl_entry *entry;
 const ace_t *ace;

 if (nentries < 1) {
  printf("acl_from_aces: empty ZFS ACL; returning EINVAL.\n");
  return (EINVAL);
 }

 if (nentries > ACL_MAX_ENTRIES) {




  printf("acl_from_aces: ZFS ACL too big to fit "
      "into 'struct acl'; returning EINVAL.\n");
  return (EINVAL);
 }

 bzero(aclp, sizeof(*aclp));
 aclp->acl_maxcnt = ACL_MAX_ENTRIES;
 aclp->acl_cnt = nentries;

 for (i = 0; i < nentries; i++) {
  entry = &(aclp->acl_entry[i]);
  ace = &(aces[i]);

  if (ace->a_flags & ACE_OWNER)
   entry->ae_tag = ACL_USER_OBJ;
  else if (ace->a_flags & ACE_GROUP)
   entry->ae_tag = ACL_GROUP_OBJ;
  else if (ace->a_flags & ACE_EVERYONE)
   entry->ae_tag = ACL_EVERYONE;
  else if (ace->a_flags & ACE_IDENTIFIER_GROUP)
   entry->ae_tag = ACL_GROUP;
  else
   entry->ae_tag = ACL_USER;

  if (entry->ae_tag == ACL_USER || entry->ae_tag == ACL_GROUP)
   entry->ae_id = ace->a_who;
  else
   entry->ae_id = ACL_UNDEFINED_ID;

  entry->ae_perm = _bsd_from_zfs(ace->a_access_mask, perms);
  entry->ae_flags = _bsd_from_zfs(ace->a_flags, flags);

  switch (ace->a_type) {
  case 131:
   entry->ae_entry_type = ACL_ENTRY_TYPE_ALLOW;
   break;
  case 130:
   entry->ae_entry_type = ACL_ENTRY_TYPE_DENY;
   break;
  case 128:
   entry->ae_entry_type = ACL_ENTRY_TYPE_AUDIT;
   break;
  case 129:
   entry->ae_entry_type = ACL_ENTRY_TYPE_ALARM;
   break;
  default:
   panic("acl_from_aces: a_type is 0x%x", ace->a_type);
  }
 }

 return (0);
}
