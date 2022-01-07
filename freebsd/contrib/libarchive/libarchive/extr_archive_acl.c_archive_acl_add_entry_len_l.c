
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string_conv {int dummy; } ;
struct archive_acl_entry {int name; } ;
struct archive_acl {int dummy; } ;


 int ARCHIVE_FAILED ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 scalar_t__ ENOMEM ;
 struct archive_acl_entry* acl_new_entry (struct archive_acl*,int,int,int,int) ;
 scalar_t__ acl_special (struct archive_acl*,int,int,int) ;
 int archive_mstring_clean (int *) ;
 int archive_mstring_copy_mbs_len_l (int *,char const*,size_t,struct archive_string_conv*) ;
 scalar_t__ errno ;

__attribute__((used)) static int
archive_acl_add_entry_len_l(struct archive_acl *acl,
    int type, int permset, int tag, int id, const char *name, size_t len,
    struct archive_string_conv *sc)
{
 struct archive_acl_entry *ap;
 int r;

 if (acl_special(acl, type, permset, tag) == 0)
  return ARCHIVE_OK;
 ap = acl_new_entry(acl, type, permset, tag, id);
 if (ap == ((void*)0)) {

  return ARCHIVE_FAILED;
 }
 if (name != ((void*)0) && *name != '\0' && len > 0) {
  r = archive_mstring_copy_mbs_len_l(&ap->name, name, len, sc);
 } else {
  r = 0;
  archive_mstring_clean(&ap->name);
 }
 if (r == 0)
  return (ARCHIVE_OK);
 else if (errno == ENOMEM)
  return (ARCHIVE_FATAL);
 else
  return (ARCHIVE_WARN);
}
