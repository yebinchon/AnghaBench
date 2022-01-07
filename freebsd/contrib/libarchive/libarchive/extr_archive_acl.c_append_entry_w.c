
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef char wchar_t ;
struct TYPE_4__ {int perm; int wc; } ;
struct TYPE_3__ {int perm; int wc; } ;







 int ARCHIVE_ENTRY_ACL_STYLE_COMPACT ;
 int ARCHIVE_ENTRY_ACL_STYLE_SOLARIS ;




 int ARCHIVE_ENTRY_ACL_TYPE_NFS4 ;
 int ARCHIVE_ENTRY_ACL_TYPE_POSIX1E ;


 int append_id_w (char**,int) ;
 TYPE_2__* nfsv4_acl_flag_map ;
 int nfsv4_acl_flag_map_size ;
 TYPE_1__* nfsv4_acl_perm_map ;
 int nfsv4_acl_perm_map_size ;
 int wcscpy (char*,char const*) ;
 int wcslen (char*) ;

__attribute__((used)) static void
append_entry_w(wchar_t **wp, const wchar_t *prefix, int type,
    int tag, int flags, const wchar_t *wname, int perm, int id)
{
 int i;

 if (prefix != ((void*)0)) {
  wcscpy(*wp, prefix);
  *wp += wcslen(*wp);
 }
 switch (tag) {
 case 128:
  wname = ((void*)0);
  id = -1;
  if ((type & ARCHIVE_ENTRY_ACL_TYPE_NFS4) != 0) {
   wcscpy(*wp, L"owner@");
   break;
  }

 case 129:
  wcscpy(*wp, L"user");
  break;
 case 136:
  wname = ((void*)0);
  id = -1;
  if ((type & ARCHIVE_ENTRY_ACL_TYPE_NFS4) != 0) {
   wcscpy(*wp, L"group@");
   break;
  }

 case 137:
  wcscpy(*wp, L"group");
  break;
 case 135:
  wcscpy(*wp, L"mask");
  wname = ((void*)0);
  id = -1;
  break;
 case 134:
  wcscpy(*wp, L"other");
  wname = ((void*)0);
  id = -1;
  break;
 case 138:
  wcscpy(*wp, L"everyone@");
  wname = ((void*)0);
  id = -1;
  break;
 }
 *wp += wcslen(*wp);
 *(*wp)++ = L':';
 if (((type & ARCHIVE_ENTRY_ACL_TYPE_POSIX1E) != 0) ||
     tag == 129 ||
     tag == 137) {
  if (wname != ((void*)0)) {
   wcscpy(*wp, wname);
   *wp += wcslen(*wp);
  } else if (tag == 129
      || tag == 137) {
   append_id_w(wp, id);
   if ((type & ARCHIVE_ENTRY_ACL_TYPE_NFS4) == 0)
    id = -1;
  }

  if (((flags & ARCHIVE_ENTRY_ACL_STYLE_SOLARIS) == 0)
      || (tag != 134
      && tag != 135))
   *(*wp)++ = L':';
 }
 if ((type & ARCHIVE_ENTRY_ACL_TYPE_POSIX1E) != 0) {

  *(*wp)++ = (perm & 0444) ? L'r' : L'-';
  *(*wp)++ = (perm & 0222) ? L'w' : L'-';
  *(*wp)++ = (perm & 0111) ? L'x' : L'-';
 } else {

  for (i = 0; i < nfsv4_acl_perm_map_size; i++) {
   if (perm & nfsv4_acl_perm_map[i].perm)
    *(*wp)++ = nfsv4_acl_perm_map[i].wc;
   else if ((flags & ARCHIVE_ENTRY_ACL_STYLE_COMPACT) == 0)
    *(*wp)++ = L'-';
  }
  *(*wp)++ = L':';
  for (i = 0; i < nfsv4_acl_flag_map_size; i++) {
   if (perm & nfsv4_acl_flag_map[i].perm)
    *(*wp)++ = nfsv4_acl_flag_map[i].wc;
   else if ((flags & ARCHIVE_ENTRY_ACL_STYLE_COMPACT) == 0)
    *(*wp)++ = L'-';
  }
  *(*wp)++ = L':';
  switch (type) {
  case 132:
   wcscpy(*wp, L"allow");
   break;
  case 130:
   wcscpy(*wp, L"deny");
   break;
  case 131:
   wcscpy(*wp, L"audit");
   break;
  case 133:
   wcscpy(*wp, L"alarm");
   break;
  default:
   break;
  }
  *wp += wcslen(*wp);
 }
 if (id != -1) {
  *(*wp)++ = L':';
  append_id_w(wp, id);
 }
}
