
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


struct TYPE_14__ {int tv_nsec; } ;
struct TYPE_13__ {int tv_nsec; } ;
struct TYPE_12__ {int tv_nsec; } ;
struct TYPE_11__ {int tv_nsec; } ;
struct TYPE_10__ {int tv_nsec; } ;
struct TYPE_9__ {int tv_nsec; } ;
struct TYPE_8__ {int tv_nsec; } ;
struct stat {int st_atime_nsec; int st_ctime_nsec; int st_mtime_nsec; int st_atime_n; int st_ctime_n; int st_mtime_n; int st_uatime; int st_uctime; int st_umtime; int st_atime_usec; int st_ctime_usec; int st_mtime_usec; int st_mode; int st_size; int st_rdev; int st_nlink; int st_ino; int st_uid; int st_gid; int st_dev; int st_birthtime; TYPE_7__ st_birthtimespec; int st_mtime; int st_ctime; int st_atime; TYPE_6__ st_mtim; TYPE_5__ st_ctim; TYPE_4__ st_atim; TYPE_3__ st_mtimespec; TYPE_2__ st_ctimespec; TYPE_1__ st_atimespec; } ;
struct archive_entry {int dummy; } ;


 int archive_entry_set_atime (struct archive_entry*,int ,int) ;
 int archive_entry_set_birthtime (struct archive_entry*,int ,int ) ;
 int archive_entry_set_ctime (struct archive_entry*,int ,int) ;
 int archive_entry_set_dev (struct archive_entry*,int ) ;
 int archive_entry_set_gid (struct archive_entry*,int ) ;
 int archive_entry_set_ino (struct archive_entry*,int ) ;
 int archive_entry_set_mode (struct archive_entry*,int ) ;
 int archive_entry_set_mtime (struct archive_entry*,int ,int) ;
 int archive_entry_set_nlink (struct archive_entry*,int ) ;
 int archive_entry_set_rdev (struct archive_entry*,int ) ;
 int archive_entry_set_size (struct archive_entry*,int ) ;
 int archive_entry_set_uid (struct archive_entry*,int ) ;
 int archive_entry_unset_birthtime (struct archive_entry*) ;

void
archive_entry_copy_stat(struct archive_entry *entry, const struct stat *st)
{
 archive_entry_set_atime(entry, st->st_atime, 0);
 archive_entry_set_ctime(entry, st->st_ctime, 0);
 archive_entry_set_mtime(entry, st->st_mtime, 0);






 archive_entry_unset_birthtime(entry);

 archive_entry_set_dev(entry, st->st_dev);
 archive_entry_set_gid(entry, st->st_gid);
 archive_entry_set_uid(entry, st->st_uid);
 archive_entry_set_ino(entry, st->st_ino);
 archive_entry_set_nlink(entry, st->st_nlink);
 archive_entry_set_rdev(entry, st->st_rdev);
 archive_entry_set_size(entry, st->st_size);
 archive_entry_set_mode(entry, st->st_mode);
}
