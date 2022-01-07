
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* wchar_t ;
struct archive_acl_entry {int type; scalar_t__ tag; int id; int permset; int name; struct archive_acl_entry* next; } ;
struct archive_acl {int mode; struct archive_acl_entry* acl_head; } ;
struct archive {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ ARCHIVE_ENTRY_ACL_GROUP_OBJ ;
 scalar_t__ ARCHIVE_ENTRY_ACL_OTHER ;
 int ARCHIVE_ENTRY_ACL_STYLE_EXTRA_ID ;
 int ARCHIVE_ENTRY_ACL_STYLE_MARK_DEFAULT ;
 int ARCHIVE_ENTRY_ACL_STYLE_SEPARATOR_COMMA ;
 int ARCHIVE_ENTRY_ACL_TYPE_ACCESS ;
 int ARCHIVE_ENTRY_ACL_TYPE_DEFAULT ;
 int ARCHIVE_ENTRY_ACL_TYPE_POSIX1E ;
 scalar_t__ ARCHIVE_ENTRY_ACL_USER_OBJ ;
 scalar_t__ ENOMEM ;
 int __archive_errx (int,char*) ;
 int append_entry_w (void***,void* const*,int,scalar_t__,int,void* const*,int,int) ;
 int archive_acl_text_len (struct archive_acl*,int,int,int,struct archive*,int *) ;
 int archive_acl_text_want_type (struct archive_acl*,int) ;
 int archive_mstring_get_wcs (struct archive*,int *,void* const**) ;
 scalar_t__ errno ;
 int free (void**) ;
 scalar_t__ malloc (int) ;
 size_t wcslen (void**) ;

wchar_t *
archive_acl_to_text_w(struct archive_acl *acl, ssize_t *text_len, int flags,
    struct archive *a)
{
 int count;
 ssize_t length;
 size_t len;
 const wchar_t *wname;
 const wchar_t *prefix;
 wchar_t separator;
 struct archive_acl_entry *ap;
 int id, r, want_type;
 wchar_t *wp, *ws;

 want_type = archive_acl_text_want_type(acl, flags);


 if (want_type == 0)
  return (((void*)0));

 if (want_type == ARCHIVE_ENTRY_ACL_TYPE_POSIX1E)
  flags |= ARCHIVE_ENTRY_ACL_STYLE_MARK_DEFAULT;

 length = archive_acl_text_len(acl, want_type, flags, 1, a, ((void*)0));

 if (length == 0)
  return (((void*)0));

 if (flags & ARCHIVE_ENTRY_ACL_STYLE_SEPARATOR_COMMA)
  separator = L',';
 else
  separator = L'\n';


 wp = ws = (wchar_t *)malloc(length * sizeof(wchar_t));
 if (wp == ((void*)0)) {
  if (errno == ENOMEM)
   __archive_errx(1, "No memory");
  return (((void*)0));
 }
 count = 0;

 if ((want_type & ARCHIVE_ENTRY_ACL_TYPE_ACCESS) != 0) {
  append_entry_w(&wp, ((void*)0), ARCHIVE_ENTRY_ACL_TYPE_ACCESS,
      ARCHIVE_ENTRY_ACL_USER_OBJ, flags, ((void*)0),
      acl->mode & 0700, -1);
  *wp++ = separator;
  append_entry_w(&wp, ((void*)0), ARCHIVE_ENTRY_ACL_TYPE_ACCESS,
      ARCHIVE_ENTRY_ACL_GROUP_OBJ, flags, ((void*)0),
      acl->mode & 0070, -1);
  *wp++ = separator;
  append_entry_w(&wp, ((void*)0), ARCHIVE_ENTRY_ACL_TYPE_ACCESS,
      ARCHIVE_ENTRY_ACL_OTHER, flags, ((void*)0),
      acl->mode & 0007, -1);
  count += 3;
 }

 for (ap = acl->acl_head; ap != ((void*)0); ap = ap->next) {
  if ((ap->type & want_type) == 0)
   continue;




  if ((ap->type == ARCHIVE_ENTRY_ACL_TYPE_ACCESS)
      && (ap->tag == ARCHIVE_ENTRY_ACL_USER_OBJ
      || ap->tag == ARCHIVE_ENTRY_ACL_GROUP_OBJ
      || ap->tag == ARCHIVE_ENTRY_ACL_OTHER))
   continue;
  if (ap->type == ARCHIVE_ENTRY_ACL_TYPE_DEFAULT &&
      (flags & ARCHIVE_ENTRY_ACL_STYLE_MARK_DEFAULT) != 0)
   prefix = L"default:";
  else
   prefix = ((void*)0);
  r = archive_mstring_get_wcs(a, &ap->name, &wname);
  if (r == 0) {
   if (count > 0)
    *wp++ = separator;
   if (flags & ARCHIVE_ENTRY_ACL_STYLE_EXTRA_ID)
    id = ap->id;
   else
    id = -1;
   append_entry_w(&wp, prefix, ap->type, ap->tag, flags,
       wname, ap->permset, id);
   count++;
  } else if (r < 0 && errno == ENOMEM) {
   free(ws);
   return (((void*)0));
  }
 }


 *wp++ = L'\0';

 len = wcslen(ws);

 if ((ssize_t)len > (length - 1))
  __archive_errx(1, "Buffer overrun");

 if (text_len != ((void*)0))
  *text_len = len;

 return (ws);
}
