
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_acl_entry {int name; } ;
struct archive_acl {int dummy; } ;


 int ARCHIVE_FAILED ;
 int ARCHIVE_OK ;
 struct archive_acl_entry* acl_new_entry (struct archive_acl*,int,int,int,int) ;
 scalar_t__ acl_special (struct archive_acl*,int,int,int) ;
 int archive_mstring_clean (int *) ;
 int archive_mstring_copy_mbs (int *,char const*) ;

int
archive_acl_add_entry(struct archive_acl *acl,
    int type, int permset, int tag, int id, const char *name)
{
 struct archive_acl_entry *ap;

 if (acl_special(acl, type, permset, tag) == 0)
  return ARCHIVE_OK;
 ap = acl_new_entry(acl, type, permset, tag, id);
 if (ap == ((void*)0)) {

  return ARCHIVE_FAILED;
 }
 if (name != ((void*)0) && *name != '\0')
  archive_mstring_copy_mbs(&ap->name, name);
 else
  archive_mstring_clean(&ap->name);
 return ARCHIVE_OK;
}
