
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string_conv {int dummy; } ;
struct archive_acl_entry {int type; scalar_t__ tag; int id; int permset; int name; struct archive_acl_entry* next; } ;
struct archive_acl {int mode; struct archive_acl_entry* acl_head; } ;
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
 int append_entry (char**,char const*,int,scalar_t__,int,char const*,int,int) ;
 int archive_acl_text_len (struct archive_acl*,int,int,int ,int *,struct archive_string_conv*) ;
 int archive_acl_text_want_type (struct archive_acl*,int) ;
 int archive_mstring_get_mbs_l (int *,char const**,size_t*,struct archive_string_conv*) ;
 scalar_t__ errno ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 size_t strlen (char*) ;

char *
archive_acl_to_text_l(struct archive_acl *acl, ssize_t *text_len, int flags,
    struct archive_string_conv *sc)
{
 int count;
 ssize_t length;
 size_t len;
 const char *name;
 const char *prefix;
 char separator;
 struct archive_acl_entry *ap;
 int id, r, want_type;
 char *p, *s;

 want_type = archive_acl_text_want_type(acl, flags);


 if (want_type == 0)
  return (((void*)0));

 if (want_type == ARCHIVE_ENTRY_ACL_TYPE_POSIX1E)
  flags |= ARCHIVE_ENTRY_ACL_STYLE_MARK_DEFAULT;

 length = archive_acl_text_len(acl, want_type, flags, 0, ((void*)0), sc);

 if (length == 0)
  return (((void*)0));

 if (flags & ARCHIVE_ENTRY_ACL_STYLE_SEPARATOR_COMMA)
  separator = ',';
 else
  separator = '\n';


 p = s = (char *)malloc(length * sizeof(char));
 if (p == ((void*)0)) {
  if (errno == ENOMEM)
   __archive_errx(1, "No memory");
  return (((void*)0));
 }
 count = 0;

 if ((want_type & ARCHIVE_ENTRY_ACL_TYPE_ACCESS) != 0) {
  append_entry(&p, ((void*)0), ARCHIVE_ENTRY_ACL_TYPE_ACCESS,
      ARCHIVE_ENTRY_ACL_USER_OBJ, flags, ((void*)0),
      acl->mode & 0700, -1);
  *p++ = separator;
  append_entry(&p, ((void*)0), ARCHIVE_ENTRY_ACL_TYPE_ACCESS,
      ARCHIVE_ENTRY_ACL_GROUP_OBJ, flags, ((void*)0),
      acl->mode & 0070, -1);
  *p++ = separator;
  append_entry(&p, ((void*)0), ARCHIVE_ENTRY_ACL_TYPE_ACCESS,
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
   prefix = "default:";
  else
   prefix = ((void*)0);
  r = archive_mstring_get_mbs_l(
      &ap->name, &name, &len, sc);
  if (r != 0) {
   free(s);
   return (((void*)0));
  }
  if (count > 0)
   *p++ = separator;
  if (name == ((void*)0) ||
      (flags & ARCHIVE_ENTRY_ACL_STYLE_EXTRA_ID)) {
   id = ap->id;
  } else {
   id = -1;
  }
  append_entry(&p, prefix, ap->type, ap->tag, flags, name,
      ap->permset, id);
  count++;
 }


 *p++ = '\0';

 len = strlen(s);

 if ((ssize_t)len > (length - 1))
  __archive_errx(1, "Buffer overrun");

 if (text_len != ((void*)0))
  *text_len = len;

 return (s);
}
