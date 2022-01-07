
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fixup_entry {int fixup; struct fixup_entry* name; struct fixup_entry* mac_metadata; int acl; struct fixup_entry* next; int mac_metadata_size; int fflags_set; int mode; int ctime_nanos; int ctime; int mtime_nanos; int mtime; int birthtime_nanos; int birthtime; int atime_nanos; int atime; } ;
struct archive_write_disk {int * fixup_list; int archive; int * pst; } ;
struct archive {int dummy; } ;


 int ARCHIVE_STATE_DATA ;
 int ARCHIVE_STATE_HEADER ;
 int ARCHIVE_WRITE_DISK_MAGIC ;
 int O_BINARY ;
 int O_CLOEXEC ;
 int O_NOFOLLOW ;
 int O_WRONLY ;
 int TODO_ACLS ;
 int TODO_FFLAGS ;
 int TODO_MAC_METADATA ;
 int TODO_MODE_BASE ;
 int TODO_TIMES ;
 int _archive_write_disk_finish_entry (int *) ;
 int archive_acl_clear (int *) ;
 int archive_check_magic (int *,int ,int,char*) ;
 int archive_write_disk_set_acls (int *,int,struct fixup_entry*,int *,int ) ;
 int chmod (struct fixup_entry*,int ) ;
 int close (int) ;
 int fchmod (int,int ) ;
 int free (struct fixup_entry*) ;
 int open (struct fixup_entry*,int) ;
 int set_fflags_platform (struct archive_write_disk*,int,struct fixup_entry*,int ,int ,int ) ;
 int set_mac_metadata (struct archive_write_disk*,struct fixup_entry*,struct fixup_entry*,int ) ;
 int set_times (struct archive_write_disk*,int,int ,struct fixup_entry*,int ,int ,int ,int ,int ,int ,int ,int ) ;
 struct fixup_entry* sort_dir_list (int *) ;

__attribute__((used)) static int
_archive_write_disk_close(struct archive *_a)
{
 struct archive_write_disk *a = (struct archive_write_disk *)_a;
 struct fixup_entry *next, *p;
 int fd, ret;

 archive_check_magic(&a->archive, ARCHIVE_WRITE_DISK_MAGIC,
     ARCHIVE_STATE_HEADER | ARCHIVE_STATE_DATA,
     "archive_write_disk_close");
 ret = _archive_write_disk_finish_entry(&a->archive);


 p = sort_dir_list(a->fixup_list);

 while (p != ((void*)0)) {
  fd = -1;
  a->pst = ((void*)0);
  if (p->fixup &
      (TODO_TIMES | TODO_MODE_BASE | TODO_ACLS | TODO_FFLAGS)) {
   fd = open(p->name,
       O_WRONLY | O_BINARY | O_NOFOLLOW | O_CLOEXEC);
  }
  if (p->fixup & TODO_TIMES) {
   set_times(a, fd, p->mode, p->name,
       p->atime, p->atime_nanos,
       p->birthtime, p->birthtime_nanos,
       p->mtime, p->mtime_nanos,
       p->ctime, p->ctime_nanos);
  }
  if (p->fixup & TODO_MODE_BASE) {





   chmod(p->name, p->mode);
  }
  if (p->fixup & TODO_ACLS)
   archive_write_disk_set_acls(&a->archive, fd,
       p->name, &p->acl, p->mode);
  if (p->fixup & TODO_FFLAGS)
   set_fflags_platform(a, fd, p->name,
       p->mode, p->fflags_set, 0);
  if (p->fixup & TODO_MAC_METADATA)
   set_mac_metadata(a, p->name, p->mac_metadata,
      p->mac_metadata_size);
  next = p->next;
  archive_acl_clear(&p->acl);
  free(p->mac_metadata);
  free(p->name);
  if (fd >= 0)
   close(fd);
  free(p);
  p = next;
 }
 a->fixup_list = ((void*)0);
 return (ret);
}
