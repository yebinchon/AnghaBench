
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdtar {int flags; int strip_components; } ;
struct archive_entry {int dummy; } ;


 int OPTFLAG_ABSOLUTE_PATHS ;
 int apply_substitution (struct bsdtar*,char const*,char**,int,int) ;
 int archive_entry_copy_hardlink (struct archive_entry*,char const*) ;
 int archive_entry_copy_pathname (struct archive_entry*,char const*) ;
 int archive_entry_copy_symlink (struct archive_entry*,char*) ;
 char* archive_entry_hardlink (struct archive_entry*) ;
 char* archive_entry_pathname (struct archive_entry*) ;
 char const* archive_entry_symlink (struct archive_entry*) ;
 int free (char*) ;
 int lafe_warnc (int ,char*) ;
 char* strip_absolute_path (struct bsdtar*,char const*) ;
 char* strip_components (char const*,int ) ;

int
edit_pathname(struct bsdtar *bsdtar, struct archive_entry *entry)
{
 const char *name = archive_entry_pathname(entry);
 const char *original_name = name;
 const char *hardlinkname = archive_entry_hardlink(entry);
 const char *original_hardlinkname = hardlinkname;
 if (bsdtar->strip_components > 0) {
  name = strip_components(name, bsdtar->strip_components);
  if (name == ((void*)0))
   return (1);

  if (hardlinkname != ((void*)0)) {
   hardlinkname = strip_components(hardlinkname,
       bsdtar->strip_components);
   if (hardlinkname == ((void*)0))
    return (1);
  }
 }

 if ((bsdtar->flags & OPTFLAG_ABSOLUTE_PATHS) == 0) {

  name = strip_absolute_path(bsdtar, name);
  if (*name == '\0')
   name = ".";

  if (hardlinkname != ((void*)0)) {
   hardlinkname = strip_absolute_path(bsdtar, hardlinkname);
   if (*hardlinkname == '\0')
    return (1);
  }
 } else {

  while (name[0] == '/' && name[1] == '/')
   name++;
 }


 if (name != original_name) {
  archive_entry_copy_pathname(entry, name);
 }
 if (hardlinkname != original_hardlinkname) {
  archive_entry_copy_hardlink(entry, hardlinkname);
 }
 return (0);
}
