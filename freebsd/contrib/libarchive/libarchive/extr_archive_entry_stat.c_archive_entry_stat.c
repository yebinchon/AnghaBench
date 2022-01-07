
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct TYPE_14__ {int tv_nsec; } ;
struct TYPE_13__ {int tv_nsec; } ;
struct TYPE_12__ {int tv_nsec; } ;
struct TYPE_11__ {int tv_nsec; } ;
struct TYPE_10__ {int tv_nsec; } ;
struct TYPE_9__ {int tv_nsec; } ;
struct TYPE_8__ {int tv_nsec; } ;
typedef struct stat {int st_atime_n; int st_ctime_n; int st_mtime_n; int st_uatime; int st_uctime; int st_umtime; int st_atime_usec; int st_ctime_usec; int st_mtime_usec; TYPE_7__ st_birthtimespec; TYPE_6__ st_mtim; TYPE_5__ st_ctim; TYPE_4__ st_atim; TYPE_3__ st_mtimespec; TYPE_2__ st_ctimespec; TYPE_1__ st_atimespec; int st_mode; scalar_t__ st_size; int st_rdev; int st_nlink; scalar_t__ st_ino; scalar_t__ st_uid; scalar_t__ st_gid; int st_dev; int st_mtime; int st_ctime; int st_birthtime; int st_atime; } const stat ;
struct archive_entry {int stat_valid; struct stat const* stat; } ;
typedef scalar_t__ off_t ;
typedef scalar_t__ ino_t ;
typedef scalar_t__ gid_t ;


 int archive_entry_atime (struct archive_entry*) ;
 int archive_entry_atime_nsec (struct archive_entry*) ;
 int archive_entry_birthtime (struct archive_entry*) ;
 int archive_entry_birthtime_nsec (struct archive_entry*) ;
 int archive_entry_ctime (struct archive_entry*) ;
 int archive_entry_ctime_nsec (struct archive_entry*) ;
 int archive_entry_dev (struct archive_entry*) ;
 scalar_t__ archive_entry_gid (struct archive_entry*) ;
 scalar_t__ archive_entry_ino64 (struct archive_entry*) ;
 int archive_entry_mode (struct archive_entry*) ;
 int archive_entry_mtime (struct archive_entry*) ;
 int archive_entry_mtime_nsec (struct archive_entry*) ;
 int archive_entry_nlink (struct archive_entry*) ;
 int archive_entry_rdev (struct archive_entry*) ;
 scalar_t__ archive_entry_size (struct archive_entry*) ;
 scalar_t__ archive_entry_uid (struct archive_entry*) ;
 struct stat const* calloc (int,int) ;

const struct stat *
archive_entry_stat(struct archive_entry *entry)
{
 struct stat *st;
 if (entry->stat == ((void*)0)) {
  entry->stat = calloc(1, sizeof(*st));
  if (entry->stat == ((void*)0))
   return (((void*)0));
  entry->stat_valid = 0;
 }
 if (entry->stat_valid)
  return (entry->stat);

 st = entry->stat;




 st->st_atime = archive_entry_atime(entry);



 st->st_ctime = archive_entry_ctime(entry);
 st->st_mtime = archive_entry_mtime(entry);
 st->st_dev = archive_entry_dev(entry);
 st->st_gid = (gid_t)archive_entry_gid(entry);
 st->st_uid = (uid_t)archive_entry_uid(entry);
 st->st_ino = (ino_t)archive_entry_ino64(entry);
 st->st_nlink = archive_entry_nlink(entry);
 st->st_rdev = archive_entry_rdev(entry);
 st->st_size = (off_t)archive_entry_size(entry);
 st->st_mode = archive_entry_mode(entry);
 entry->stat_valid = 1;

 return (st);
}
