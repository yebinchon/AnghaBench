
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tv_nsec; } ;
struct TYPE_3__ {int tv_nsec; } ;
struct stat {int st_mtime_n; int st_umtime; int st_mtime_usec; TYPE_2__ st_mtim; TYPE_1__ st_mtimespec; int st_mtime; } ;
struct archive_entry {int dummy; } ;


 int archive_entry_mtime (struct archive_entry*) ;
 int archive_entry_mtime_nsec (struct archive_entry*) ;
 scalar_t__ to_int64_time (int ) ;

__attribute__((used)) static int
older(struct stat *st, struct archive_entry *entry)
{


 if (to_int64_time(st->st_mtime) < to_int64_time(archive_entry_mtime(entry)))
  return (1);

 if (to_int64_time(st->st_mtime) > to_int64_time(archive_entry_mtime(entry)))
  return (0);
 return (0);
}
