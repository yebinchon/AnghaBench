
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {struct ae_sparse* sparse_head; struct ae_xattr* xattr_head; int acl; int encryption; int ae_symlink_type; int ae_uname; int ae_set; int ae_symlink; int ae_sourcepath; int ae_pathname; int ae_hardlink; int ae_gname; int ae_fflags_text; int ae_fflags_clear; int ae_fflags_set; int ae_stat; int archive; } ;
struct ae_xattr {struct ae_xattr* next; int size; int value; int name; } ;
struct ae_sparse {struct ae_sparse* next; int length; int offset; } ;


 int archive_acl_copy (int *,int *) ;
 int archive_entry_copy_mac_metadata (struct archive_entry*,void const*,size_t) ;
 void* archive_entry_mac_metadata (struct archive_entry*,size_t*) ;
 struct archive_entry* archive_entry_new2 (int ) ;
 int archive_entry_sparse_add_entry (struct archive_entry*,int ,int ) ;
 int archive_entry_xattr_add_entry (struct archive_entry*,int ,int ,int ) ;
 int archive_mstring_copy (int *,int *) ;

struct archive_entry *
archive_entry_clone(struct archive_entry *entry)
{
 struct archive_entry *entry2;
 struct ae_xattr *xp;
 struct ae_sparse *sp;
 size_t s;
 const void *p;




 entry2 = archive_entry_new2(entry->archive);
 if (entry2 == ((void*)0))
  return (((void*)0));
 entry2->ae_stat = entry->ae_stat;
 entry2->ae_fflags_set = entry->ae_fflags_set;
 entry2->ae_fflags_clear = entry->ae_fflags_clear;



 archive_mstring_copy(&entry2->ae_fflags_text, &entry->ae_fflags_text);
 archive_mstring_copy(&entry2->ae_gname, &entry->ae_gname);
 archive_mstring_copy(&entry2->ae_hardlink, &entry->ae_hardlink);
 archive_mstring_copy(&entry2->ae_pathname, &entry->ae_pathname);
 archive_mstring_copy(&entry2->ae_sourcepath, &entry->ae_sourcepath);
 archive_mstring_copy(&entry2->ae_symlink, &entry->ae_symlink);
 entry2->ae_set = entry->ae_set;
 archive_mstring_copy(&entry2->ae_uname, &entry->ae_uname);


 entry2->ae_symlink_type = entry->ae_symlink_type;


 entry2->encryption = entry->encryption;


 archive_acl_copy(&entry2->acl, &entry->acl);


 p = archive_entry_mac_metadata(entry, &s);
 archive_entry_copy_mac_metadata(entry2, p, s);


 xp = entry->xattr_head;
 while (xp != ((void*)0)) {
  archive_entry_xattr_add_entry(entry2,
      xp->name, xp->value, xp->size);
  xp = xp->next;
 }


 sp = entry->sparse_head;
 while (sp != ((void*)0)) {
  archive_entry_sparse_add_entry(entry2,
      sp->offset, sp->length);
  sp = sp->next;
 }

 return (entry2);
}
