
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpio {int return_value; char const* destdir; size_t pass_destpath_alloc; char* pass_destpath; int * linkresolver; scalar_t__ option_rename; int gname_override; int gid_override; int uname_override; int uid_override; int archive_read_disk; } ;
struct archive_entry {int dummy; } ;


 scalar_t__ AE_IFDIR ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_OK ;
 int ENOMEM ;
 int archive_entry_copy_pathname (struct archive_entry*,char const*) ;
 int archive_entry_copy_sourcepath (struct archive_entry*,char const*) ;
 scalar_t__ archive_entry_filetype (struct archive_entry*) ;
 int archive_entry_free (struct archive_entry*) ;
 int archive_entry_linkify (int *,struct archive_entry**,struct archive_entry**) ;
 struct archive_entry* archive_entry_new () ;
 int archive_entry_set_gid (struct archive_entry*,int ) ;
 int archive_entry_set_gname (struct archive_entry*,int ) ;
 int archive_entry_set_uid (struct archive_entry*,int ) ;
 int archive_entry_set_uname (struct archive_entry*,int ) ;
 int archive_error_string (int ) ;
 int archive_read_disk_entry_from_file (int ,struct archive_entry*,int,int *) ;
 char* cpio_rename (char const*) ;
 int entry_to_archive (struct cpio*,struct archive_entry*) ;
 int free (char*) ;
 int lafe_errc (int,int ,char*,...) ;
 int lafe_warnc (int ,char*,int ) ;
 char* malloc (int) ;
 int remove_leading_slash (char const*) ;
 int strcat (char*,int ) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int
file_to_archive(struct cpio *cpio, const char *srcpath)
{
 const char *destpath;
 struct archive_entry *entry, *spare;
 size_t len;
 int r;





 entry = archive_entry_new();
 if (entry == ((void*)0))
  lafe_errc(1, 0, "Couldn't allocate entry");
 archive_entry_copy_sourcepath(entry, srcpath);
 r = archive_read_disk_entry_from_file(cpio->archive_read_disk,
     entry, -1, ((void*)0));
 if (r < ARCHIVE_FAILED)
  lafe_errc(1, 0, "%s",
      archive_error_string(cpio->archive_read_disk));
 if (r < ARCHIVE_OK)
  lafe_warnc(0, "%s",
      archive_error_string(cpio->archive_read_disk));
 if (r <= ARCHIVE_FAILED) {
  archive_entry_free(entry);
  cpio->return_value = 1;
  return (r);
 }

 if (cpio->uid_override >= 0) {
  archive_entry_set_uid(entry, cpio->uid_override);
  archive_entry_set_uname(entry, cpio->uname_override);
 }
 if (cpio->gid_override >= 0) {
  archive_entry_set_gid(entry, cpio->gid_override);
  archive_entry_set_gname(entry, cpio->gname_override);
 }







 destpath = srcpath;
 if (cpio->destdir) {
  len = strlen(cpio->destdir) + strlen(srcpath) + 8;
  if (len >= cpio->pass_destpath_alloc) {
   while (len >= cpio->pass_destpath_alloc) {
    cpio->pass_destpath_alloc += 512;
    cpio->pass_destpath_alloc *= 2;
   }
   free(cpio->pass_destpath);
   cpio->pass_destpath = malloc(cpio->pass_destpath_alloc);
   if (cpio->pass_destpath == ((void*)0))
    lafe_errc(1, ENOMEM,
        "Can't allocate path buffer");
  }
  strcpy(cpio->pass_destpath, cpio->destdir);
  strcat(cpio->pass_destpath, remove_leading_slash(srcpath));
  destpath = cpio->pass_destpath;
 }
 if (cpio->option_rename)
  destpath = cpio_rename(destpath);
 if (destpath == ((void*)0)) {
  archive_entry_free(entry);
  return (0);
 }
 archive_entry_copy_pathname(entry, destpath);




 spare = ((void*)0);
 if (cpio->linkresolver != ((void*)0)
     && archive_entry_filetype(entry) != AE_IFDIR) {
  archive_entry_linkify(cpio->linkresolver, &entry, &spare);
 }

 if (entry != ((void*)0)) {
  r = entry_to_archive(cpio, entry);
  archive_entry_free(entry);
  if (spare != ((void*)0)) {
   if (r == 0)
    r = entry_to_archive(cpio, spare);
   archive_entry_free(spare);
  }
 }
 return (r);
}
