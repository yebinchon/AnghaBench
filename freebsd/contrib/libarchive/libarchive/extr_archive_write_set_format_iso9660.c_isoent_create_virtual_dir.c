
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isofile {int entry; } ;
struct isoent {int dir; int virtual; } ;
struct iso9660 {int dummy; } ;
struct archive_write {int dummy; } ;


 int AE_IFDIR ;
 scalar_t__ ARCHIVE_WARN ;
 int archive_entry_set_gid (int ,int ) ;
 int archive_entry_set_mode (int ,int) ;
 int archive_entry_set_nlink (int ,int) ;
 int archive_entry_set_pathname (int ,char const*) ;
 int archive_entry_set_uid (int ,int ) ;
 int archive_entry_unset_atime (int ) ;
 int archive_entry_unset_ctime (int ) ;
 int archive_entry_unset_mtime (int ) ;
 int getgid () ;
 int getuid () ;
 struct isoent* isoent_new (struct isofile*) ;
 int isofile_add_entry (struct iso9660*,struct isofile*) ;
 int isofile_free (struct isofile*) ;
 scalar_t__ isofile_gen_utility_names (struct archive_write*,struct isofile*) ;
 struct isofile* isofile_new (struct archive_write*,int *) ;

__attribute__((used)) static struct isoent *
isoent_create_virtual_dir(struct archive_write *a, struct iso9660 *iso9660, const char *pathname)
{
 struct isofile *file;
 struct isoent *isoent;

 file = isofile_new(a, ((void*)0));
 if (file == ((void*)0))
  return (((void*)0));
 archive_entry_set_pathname(file->entry, pathname);
 archive_entry_unset_mtime(file->entry);
 archive_entry_unset_atime(file->entry);
 archive_entry_unset_ctime(file->entry);
 archive_entry_set_uid(file->entry, getuid());
 archive_entry_set_gid(file->entry, getgid());
 archive_entry_set_mode(file->entry, 0555 | AE_IFDIR);
 archive_entry_set_nlink(file->entry, 2);
 if (isofile_gen_utility_names(a, file) < ARCHIVE_WARN) {
  isofile_free(file);
  return (((void*)0));
 }
 isofile_add_entry(iso9660, file);

 isoent = isoent_new(file);
 if (isoent == ((void*)0))
  return (((void*)0));
 isoent->dir = 1;
 isoent->virtual = 1;

 return (isoent);
}
