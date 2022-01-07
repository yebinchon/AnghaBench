
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int vtable; int state; int magic; } ;
struct archive_read_disk {struct archive archive; int tree_enter_working_dir; int tree_current_dir_fd; int open_on_current_dir; int flags; int lookup_gname; int lookup_uname; int entry; } ;


 int ARCHIVE_READDISK_MAC_COPYFILE ;
 int ARCHIVE_READ_DISK_MAGIC ;
 int ARCHIVE_STATE_NEW ;
 int archive_entry_new2 (struct archive*) ;
 int archive_read_disk_vtable () ;
 scalar_t__ calloc (int,int) ;
 int open_on_current_dir ;
 int tree_current_dir_fd ;
 int tree_enter_working_dir ;
 int trivial_lookup_gname ;
 int trivial_lookup_uname ;

struct archive *
archive_read_disk_new(void)
{
 struct archive_read_disk *a;

 a = (struct archive_read_disk *)calloc(1, sizeof(*a));
 if (a == ((void*)0))
  return (((void*)0));
 a->archive.magic = ARCHIVE_READ_DISK_MAGIC;
 a->archive.state = ARCHIVE_STATE_NEW;
 a->archive.vtable = archive_read_disk_vtable();
 a->entry = archive_entry_new2(&a->archive);
 a->lookup_uname = trivial_lookup_uname;
 a->lookup_gname = trivial_lookup_gname;
 a->flags = ARCHIVE_READDISK_MAC_COPYFILE;
 a->open_on_current_dir = open_on_current_dir;
 a->tree_current_dir_fd = tree_current_dir_fd;
 a->tree_enter_working_dir = tree_enter_working_dir;
 return (&a->archive);
}
