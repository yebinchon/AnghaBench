
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct archive_write_disk {int name; int mode; int fd; int entry; int start_time; } ;


 int ARCHIVE_OK ;
 int archive_entry_atime (int ) ;
 scalar_t__ archive_entry_atime_is_set (int ) ;
 long archive_entry_atime_nsec (int ) ;
 int archive_entry_birthtime (int ) ;
 scalar_t__ archive_entry_birthtime_is_set (int ) ;
 long archive_entry_birthtime_nsec (int ) ;
 int archive_entry_ctime (int ) ;
 scalar_t__ archive_entry_ctime_is_set (int ) ;
 long archive_entry_ctime_nsec (int ) ;
 int archive_entry_mtime (int ) ;
 scalar_t__ archive_entry_mtime_is_set (int ) ;
 long archive_entry_mtime_nsec (int ) ;
 int set_times (struct archive_write_disk*,int ,int ,int ,int ,long,int ,long,int ,long,int ,long) ;

__attribute__((used)) static int
set_times_from_entry(struct archive_write_disk *a)
{
 time_t atime, birthtime, mtime, cctime;
 long atime_nsec, birthtime_nsec, mtime_nsec, ctime_nsec;


 atime = birthtime = mtime = cctime = a->start_time;
 atime_nsec = birthtime_nsec = mtime_nsec = ctime_nsec = 0;


 if (!archive_entry_atime_is_set(a->entry)



     && !archive_entry_mtime_is_set(a->entry))
  return (ARCHIVE_OK);

 if (archive_entry_atime_is_set(a->entry)) {
  atime = archive_entry_atime(a->entry);
  atime_nsec = archive_entry_atime_nsec(a->entry);
 }
 if (archive_entry_birthtime_is_set(a->entry)) {
  birthtime = archive_entry_birthtime(a->entry);
  birthtime_nsec = archive_entry_birthtime_nsec(a->entry);
 }
 if (archive_entry_mtime_is_set(a->entry)) {
  mtime = archive_entry_mtime(a->entry);
  mtime_nsec = archive_entry_mtime_nsec(a->entry);
 }
 if (archive_entry_ctime_is_set(a->entry)) {
  cctime = archive_entry_ctime(a->entry);
  ctime_nsec = archive_entry_ctime_nsec(a->entry);
 }

 return set_times(a, a->fd, a->mode, a->name,
    atime, atime_nsec,
    birthtime, birthtime_nsec,
    mtime, mtime_nsec,
    cctime, ctime_nsec);
}
