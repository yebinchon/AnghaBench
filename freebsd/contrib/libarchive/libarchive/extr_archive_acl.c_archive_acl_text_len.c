
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int uid_t ;
struct archive_string_conv {int dummy; } ;
struct archive_acl_entry {int type; int tag; int id; int name; struct archive_acl_entry* next; } ;
struct archive_acl {struct archive_acl_entry* acl_head; } ;
struct archive {int dummy; } ;
typedef scalar_t__ ssize_t ;







 int ARCHIVE_ENTRY_ACL_STYLE_EXTRA_ID ;
 int ARCHIVE_ENTRY_ACL_STYLE_SOLARIS ;
 int ARCHIVE_ENTRY_ACL_TYPE_ACCESS ;
 int ARCHIVE_ENTRY_ACL_TYPE_DEFAULT ;
 int ARCHIVE_ENTRY_ACL_TYPE_DENY ;
 int ARCHIVE_ENTRY_ACL_TYPE_NFS4 ;
 int ARCHIVE_ENTRY_ACL_TYPE_POSIX1E ;


 scalar_t__ ENOMEM ;
 int archive_mstring_get_mbs_l (int *,char const**,size_t*,struct archive_string_conv*) ;
 int archive_mstring_get_wcs (struct archive*,int *,int const**) ;
 scalar_t__ errno ;
 scalar_t__ wcslen (int const*) ;

__attribute__((used)) static ssize_t
archive_acl_text_len(struct archive_acl *acl, int want_type, int flags,
    int wide, struct archive *a, struct archive_string_conv *sc) {
 struct archive_acl_entry *ap;
 const char *name;
 const wchar_t *wname;
 int count, idlen, tmp, r;
 ssize_t length;
 size_t len;

 count = 0;
 length = 0;
 for (ap = acl->acl_head; ap != ((void*)0); ap = ap->next) {
  if ((ap->type & want_type) == 0)
   continue;




  if ((ap->type == ARCHIVE_ENTRY_ACL_TYPE_ACCESS)
      && (ap->tag == 128
      || ap->tag == 132
      || ap->tag == 130))
   continue;
  count++;
  if ((want_type & ARCHIVE_ENTRY_ACL_TYPE_DEFAULT) != 0
      && (ap->type & ARCHIVE_ENTRY_ACL_TYPE_DEFAULT) != 0)
   length += 8;
  switch (ap->tag) {
  case 128:
   if (want_type == ARCHIVE_ENTRY_ACL_TYPE_NFS4) {
    length += 6;
    break;
   }

  case 129:
  case 131:
   length += 4;
   break;
  case 132:
   if (want_type == ARCHIVE_ENTRY_ACL_TYPE_NFS4) {
    length += 6;
    break;
   }

  case 133:
  case 130:
   length += 5;
   break;
  case 134:
   length += 9;
   break;
  }
  length += 1;
  if (ap->tag == 129 ||
      ap->tag == 133) {
   if (wide) {
    r = archive_mstring_get_wcs(a, &ap->name,
        &wname);
    if (r == 0 && wname != ((void*)0))
     length += wcslen(wname);
    else if (r < 0 && errno == ENOMEM)
     return (0);
    else
     length += sizeof(uid_t) * 3 + 1;
   } else {
    r = archive_mstring_get_mbs_l(&ap->name, &name,
        &len, sc);
    if (r != 0)
     return (0);
    if (len > 0 && name != ((void*)0))
     length += len;
    else
     length += sizeof(uid_t) * 3 + 1;
   }
   length += 1;
  } else if (want_type != ARCHIVE_ENTRY_ACL_TYPE_NFS4)
   length += 1;

  if (((flags & ARCHIVE_ENTRY_ACL_STYLE_SOLARIS) != 0)
      && ((want_type & ARCHIVE_ENTRY_ACL_TYPE_POSIX1E) != 0)
      && (ap->tag == 130
      || ap->tag == 131)) {

   length = length - 1;
  }

  if (want_type == ARCHIVE_ENTRY_ACL_TYPE_NFS4) {

   length += 27;
   if ((ap->type & ARCHIVE_ENTRY_ACL_TYPE_DENY) == 0)
    length += 1;
  } else
   length += 3;

  if ((ap->tag == 129 ||
      ap->tag == 133) &&
      (flags & ARCHIVE_ENTRY_ACL_STYLE_EXTRA_ID) != 0) {
   length += 1;

   idlen = 1;
   tmp = ap->id;
   while (tmp > 9) {
    tmp = tmp / 10;
    idlen++;
   }
   length += idlen;
  }
  length ++;
 }


 if ((want_type & ARCHIVE_ENTRY_ACL_TYPE_ACCESS) != 0) {
  if ((flags & ARCHIVE_ENTRY_ACL_STYLE_SOLARIS) != 0) {

   length += 31;
  } else {

   length += 32;
  }
 } else if (count == 0)
  return (0);


 return (length);
}
