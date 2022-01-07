
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int time_t ;
struct cpio {scalar_t__ day_first; scalar_t__ option_numeric_uid_gid; } ;
struct archive_entry {int dummy; } ;
typedef int size ;
typedef int date ;
typedef int FILE ;


 scalar_t__ AE_IFBLK ;
 scalar_t__ AE_IFCHR ;
 scalar_t__ archive_entry_filetype (struct archive_entry*) ;
 scalar_t__ archive_entry_gid (struct archive_entry*) ;
 char* archive_entry_gname (struct archive_entry*) ;
 char* archive_entry_hardlink (struct archive_entry*) ;
 int archive_entry_mtime (struct archive_entry*) ;
 char* archive_entry_nlink (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 scalar_t__ archive_entry_rdevmajor (struct archive_entry*) ;
 scalar_t__ archive_entry_rdevminor (struct archive_entry*) ;
 scalar_t__ archive_entry_size (struct archive_entry*) ;
 char* archive_entry_strmode (struct archive_entry*) ;
 char* archive_entry_symlink (struct archive_entry*) ;
 scalar_t__ archive_entry_uid (struct archive_entry*) ;
 char* archive_entry_uname (struct archive_entry*) ;
 int cpio_i64toa (scalar_t__) ;
 int fprintf (int *,char*,...) ;
 int localtime (int*) ;
 char* lookup_gname (struct cpio*,int ) ;
 char* lookup_uname (struct cpio*,int ) ;
 int snprintf (char*,int,char*,unsigned long,unsigned long) ;
 int * stdout ;
 int strcpy (char*,int ) ;
 int strftime (char*,int,char const*,int ) ;
 int time (int*) ;

__attribute__((used)) static void
list_item_verbose(struct cpio *cpio, struct archive_entry *entry)
{
 char size[32];
 char date[32];
 char uids[16], gids[16];
 const char *uname, *gname;
 FILE *out = stdout;
 const char *fmt;
 time_t mtime;
 static time_t now;

 if (!now)
  time(&now);

 if (cpio->option_numeric_uid_gid) {

  strcpy(uids, cpio_i64toa(archive_entry_uid(entry)));
  uname = uids;
  strcpy(gids, cpio_i64toa(archive_entry_gid(entry)));
  gname = gids;
 } else {

  uname = archive_entry_uname(entry);
  if (uname == ((void*)0))
   uname = lookup_uname(cpio, (uid_t)archive_entry_uid(entry));

  gname = archive_entry_gname(entry);
  if (gname == ((void*)0))
   gname = lookup_gname(cpio, (uid_t)archive_entry_gid(entry));
 }


 if (archive_entry_filetype(entry) == AE_IFCHR
     || archive_entry_filetype(entry) == AE_IFBLK) {
  snprintf(size, sizeof(size), "%lu,%lu",
      (unsigned long)archive_entry_rdevmajor(entry),
      (unsigned long)archive_entry_rdevminor(entry));
 } else {
  strcpy(size, cpio_i64toa(archive_entry_size(entry)));
 }


 mtime = archive_entry_mtime(entry);
 if (mtime - now > 365*86400/2
  || mtime - now < -365*86400/2)
  fmt = cpio->day_first ? "%e %b  %Y" : "%b %e  %Y";
 else
  fmt = cpio->day_first ? "%e %b %H:%M" : "%b %e %H:%M";

 strftime(date, sizeof(date), fmt, localtime(&mtime));

 fprintf(out, "%s%3d %-8s %-8s %8s %12s %s",
     archive_entry_strmode(entry),
     archive_entry_nlink(entry),
     uname, gname, size, date,
     archive_entry_pathname(entry));


 if (archive_entry_hardlink(entry))
  fprintf(out, " link to %s", archive_entry_hardlink(entry));
 else if (archive_entry_symlink(entry))
  fprintf(out, " -> %s", archive_entry_symlink(entry));
 fprintf(out, "\n");
}
