
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int perm; int c; } ;
struct TYPE_3__ {int perm; int c; } ;







 int ARCHIVE_ENTRY_ACL_STYLE_COMPACT ;
 int ARCHIVE_ENTRY_ACL_STYLE_SOLARIS ;




 int ARCHIVE_ENTRY_ACL_TYPE_NFS4 ;
 int ARCHIVE_ENTRY_ACL_TYPE_POSIX1E ;


 int append_id (char**,int) ;
 TYPE_2__* nfsv4_acl_flag_map ;
 int nfsv4_acl_flag_map_size ;
 TYPE_1__* nfsv4_acl_perm_map ;
 int nfsv4_acl_perm_map_size ;
 int strcpy (char*,char const*) ;
 int strlen (char*) ;

__attribute__((used)) static void
append_entry(char **p, const char *prefix, int type,
    int tag, int flags, const char *name, int perm, int id)
{
 int i;

 if (prefix != ((void*)0)) {
  strcpy(*p, prefix);
  *p += strlen(*p);
 }
 switch (tag) {
 case 128:
  name = ((void*)0);
  id = -1;
  if ((type & ARCHIVE_ENTRY_ACL_TYPE_NFS4) != 0) {
   strcpy(*p, "owner@");
   break;
  }

 case 129:
  strcpy(*p, "user");
  break;
 case 136:
  name = ((void*)0);
  id = -1;
  if ((type & ARCHIVE_ENTRY_ACL_TYPE_NFS4) != 0) {
   strcpy(*p, "group@");
   break;
  }

 case 137:
  strcpy(*p, "group");
  break;
 case 135:
  strcpy(*p, "mask");
  name = ((void*)0);
  id = -1;
  break;
 case 134:
  strcpy(*p, "other");
  name = ((void*)0);
  id = -1;
  break;
 case 138:
  strcpy(*p, "everyone@");
  name = ((void*)0);
  id = -1;
  break;
 }
 *p += strlen(*p);
 *(*p)++ = ':';
 if (((type & ARCHIVE_ENTRY_ACL_TYPE_POSIX1E) != 0) ||
     tag == 129 ||
     tag == 137) {
  if (name != ((void*)0)) {
   strcpy(*p, name);
   *p += strlen(*p);
  } else if (tag == 129
      || tag == 137) {
   append_id(p, id);
   if ((type & ARCHIVE_ENTRY_ACL_TYPE_NFS4) == 0)
    id = -1;
  }

  if (((flags & ARCHIVE_ENTRY_ACL_STYLE_SOLARIS) == 0)
      || (tag != 134
      && tag != 135))
   *(*p)++ = ':';
 }
 if ((type & ARCHIVE_ENTRY_ACL_TYPE_POSIX1E) != 0) {

  *(*p)++ = (perm & 0444) ? 'r' : '-';
  *(*p)++ = (perm & 0222) ? 'w' : '-';
  *(*p)++ = (perm & 0111) ? 'x' : '-';
 } else {

  for (i = 0; i < nfsv4_acl_perm_map_size; i++) {
   if (perm & nfsv4_acl_perm_map[i].perm)
    *(*p)++ = nfsv4_acl_perm_map[i].c;
   else if ((flags & ARCHIVE_ENTRY_ACL_STYLE_COMPACT) == 0)
    *(*p)++ = '-';
  }
  *(*p)++ = ':';
  for (i = 0; i < nfsv4_acl_flag_map_size; i++) {
   if (perm & nfsv4_acl_flag_map[i].perm)
    *(*p)++ = nfsv4_acl_flag_map[i].c;
   else if ((flags & ARCHIVE_ENTRY_ACL_STYLE_COMPACT) == 0)
    *(*p)++ = '-';
  }
  *(*p)++ = ':';
  switch (type) {
  case 132:
   strcpy(*p, "allow");
   break;
  case 130:
   strcpy(*p, "deny");
   break;
  case 131:
   strcpy(*p, "audit");
   break;
  case 133:
   strcpy(*p, "alarm");
   break;
  }
  *p += strlen(*p);
 }
 if (id != -1) {
  *(*p)++ = ':';
  append_id(p, id);
 }
}
