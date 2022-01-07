
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct stat {int dummy; } ;
struct archive_match {int dummy; } ;
struct archive_entry {int dummy; } ;


 int archive_entry_copy_stat (struct archive_entry*,struct stat*) ;
 int archive_entry_ctime (struct archive_entry*) ;
 long archive_entry_ctime_nsec (struct archive_entry*) ;
 int archive_entry_free (struct archive_entry*) ;
 int archive_entry_mtime (struct archive_entry*) ;
 long archive_entry_mtime_nsec (struct archive_entry*) ;
 struct archive_entry* archive_entry_new () ;
 int error_nomem (struct archive_match*) ;
 int set_timefilter (struct archive_match*,int,int ,long,int ,long) ;

__attribute__((used)) static int
set_timefilter_stat(struct archive_match *a, int timetype, struct stat *st)
{
 struct archive_entry *ae;
 time_t ctime_sec, mtime_sec;
 long ctime_ns, mtime_ns;

 ae = archive_entry_new();
 if (ae == ((void*)0))
  return (error_nomem(a));
 archive_entry_copy_stat(ae, st);
 ctime_sec = archive_entry_ctime(ae);
 ctime_ns = archive_entry_ctime_nsec(ae);
 mtime_sec = archive_entry_mtime(ae);
 mtime_ns = archive_entry_mtime_nsec(ae);
 archive_entry_free(ae);
 return set_timefilter(a, timetype, mtime_sec, mtime_ns,
   ctime_sec, ctime_ns);
}
