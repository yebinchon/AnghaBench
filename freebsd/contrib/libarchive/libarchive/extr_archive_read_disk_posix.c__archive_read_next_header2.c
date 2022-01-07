
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree {int entry_fd; int entry_eof; int entry_remaining_bytes; int nlink; int entry_total; int restore_time; } ;
struct TYPE_2__ {int state; } ;
struct archive_read_disk {TYPE_1__ archive; struct tree* tree; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int AE_IFREG ;



 int ARCHIVE_READ_DISK_MAGIC ;

 int ARCHIVE_STATE_DATA ;
 int ARCHIVE_STATE_EOF ;
 int ARCHIVE_STATE_FATAL ;
 int ARCHIVE_STATE_HEADER ;

 int __archive_reset_read_data (TYPE_1__*) ;
 int archive_check_magic (struct archive*,int ,int,char*) ;
 int archive_entry_clear (struct archive_entry*) ;
 int archive_entry_copy_sourcepath (struct archive_entry*,int ) ;
 int archive_entry_filetype (struct archive_entry*) ;
 int archive_entry_nlink (struct archive_entry*) ;
 int archive_entry_size (struct archive_entry*) ;
 int close (int) ;
 int close_and_restore_time (int,struct tree*,int *) ;
 int next_entry (struct archive_read_disk*,struct tree*,struct archive_entry*) ;
 int const setup_sparse (struct archive_read_disk*,struct archive_entry*) ;
 int tree_current_path (struct tree*) ;
 int tree_enter_initial_dir (struct tree*) ;

__attribute__((used)) static int
_archive_read_next_header2(struct archive *_a, struct archive_entry *entry)
{
 struct archive_read_disk *a = (struct archive_read_disk *)_a;
 struct tree *t;
 int r;

 archive_check_magic(_a, ARCHIVE_READ_DISK_MAGIC,
     ARCHIVE_STATE_HEADER | ARCHIVE_STATE_DATA,
     "archive_read_next_header2");

 t = a->tree;
 if (t->entry_fd >= 0) {
  close_and_restore_time(t->entry_fd, t, &t->restore_time);
  t->entry_fd = -1;
 }

 archive_entry_clear(entry);

 for (;;) {
  r = next_entry(a, t, entry);
  if (t->entry_fd >= 0) {
   close(t->entry_fd);
   t->entry_fd = -1;
  }

  if (r == 129) {
   archive_entry_clear(entry);
   continue;
  }
  break;
 }


 tree_enter_initial_dir(t);






 switch (r) {
 case 132:
  a->archive.state = ARCHIVE_STATE_EOF;
  break;
 case 130:
 case 128:

  archive_entry_copy_sourcepath(entry, tree_current_path(t));
  t->entry_total = 0;
  if (archive_entry_filetype(entry) == AE_IFREG) {
   t->nlink = archive_entry_nlink(entry);
   t->entry_remaining_bytes = archive_entry_size(entry);
   t->entry_eof = (t->entry_remaining_bytes == 0)? 1: 0;
   if (!t->entry_eof &&
       setup_sparse(a, entry) != 130)
    return (131);
  } else {
   t->entry_remaining_bytes = 0;
   t->entry_eof = 1;
  }
  a->archive.state = ARCHIVE_STATE_DATA;
  break;
 case 129:
  break;
 case 131:
  a->archive.state = ARCHIVE_STATE_FATAL;
  break;
 }

 __archive_reset_read_data(&a->archive);
 return (r);
}
