
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fixup_entry {int fixup; unsigned long fflags_set; int mode; } ;
struct archive_write_disk {int todo; int name; int fd; int entry; } ;
typedef int mode_t ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int EXT2_APPEND_FL ;
 int EXT2_IMMUTABLE_FL ;
 int FS_APPEND_FL ;
 int FS_IMMUTABLE_FL ;
 int FS_JOURNAL_DATA_FL ;
 int SF_APPEND ;
 int SF_IMMUTABLE ;
 int TODO_FFLAGS ;
 int TODO_MODE ;
 int UF_APPEND ;
 int UF_IMMUTABLE ;
 int archive_entry_fflags (int ,unsigned long*,unsigned long*) ;
 int archive_entry_mode (int ) ;
 struct fixup_entry* current_fixup (struct archive_write_disk*,int ) ;
 int set_fflags_platform (struct archive_write_disk*,int ,int ,int ,unsigned long,unsigned long) ;

__attribute__((used)) static int
set_fflags(struct archive_write_disk *a)
{
 struct fixup_entry *le;
 unsigned long set, clear;
 int r;
 mode_t mode = archive_entry_mode(a->entry);
 const int critical_flags = 0
 ;

 if (a->todo & TODO_FFLAGS) {
  archive_entry_fflags(a->entry, &set, &clear);





  if ((critical_flags != 0) && (set & critical_flags)) {
   le = current_fixup(a, a->name);
   if (le == ((void*)0))
    return (ARCHIVE_FATAL);
   le->fixup |= TODO_FFLAGS;
   le->fflags_set = set;

   if ((le->fixup & TODO_MODE) == 0)
    le->mode = mode;
  } else {
   r = set_fflags_platform(a, a->fd,
       a->name, mode, set, clear);
   if (r != ARCHIVE_OK)
    return (r);
  }
 }
 return (ARCHIVE_OK);
}
