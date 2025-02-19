
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct match_file {int flag; scalar_t__ ctime_sec; long ctime_nsec; scalar_t__ mtime_sec; long mtime_nsec; } ;
struct TYPE_4__ {int * rbt_ops; } ;
struct TYPE_3__ {scalar_t__ count; } ;
struct archive_match {int newer_ctime_filter; scalar_t__ newer_ctime_sec; long newer_ctime_nsec; int older_ctime_filter; scalar_t__ older_ctime_sec; long older_ctime_nsec; int newer_mtime_filter; scalar_t__ newer_mtime_sec; long newer_mtime_nsec; int older_mtime_filter; scalar_t__ older_mtime_sec; long older_mtime_nsec; TYPE_2__ exclusion_tree; TYPE_1__ exclusion_entry_list; } ;
struct archive_entry {int dummy; } ;


 int ARCHIVE_MATCH_CTIME ;
 int ARCHIVE_MATCH_EQUAL ;
 int ARCHIVE_MATCH_MTIME ;
 int ARCHIVE_MATCH_NEWER ;
 int ARCHIVE_MATCH_OLDER ;
 scalar_t__ __archive_rb_tree_find_node (TYPE_2__*,void const*) ;
 scalar_t__ archive_entry_ctime (struct archive_entry*) ;
 scalar_t__ archive_entry_ctime_is_set (struct archive_entry*) ;
 long archive_entry_ctime_nsec (struct archive_entry*) ;
 scalar_t__ archive_entry_mtime (struct archive_entry*) ;
 long archive_entry_mtime_nsec (struct archive_entry*) ;
 void* archive_entry_pathname (struct archive_entry*) ;
 void* archive_entry_pathname_w (struct archive_entry*) ;
 int rb_ops_mbs ;
 int rb_ops_wcs ;

__attribute__((used)) static int
time_excluded(struct archive_match *a, struct archive_entry *entry)
{
 struct match_file *f;
 const void *pathname;
 time_t sec;
 long nsec;




 if (a->newer_ctime_filter) {

  if (archive_entry_ctime_is_set(entry))
   sec = archive_entry_ctime(entry);
  else
   sec = archive_entry_mtime(entry);
  if (sec < a->newer_ctime_sec)
   return (1);
  if (sec == a->newer_ctime_sec) {
   if (archive_entry_ctime_is_set(entry))
    nsec = archive_entry_ctime_nsec(entry);
   else
    nsec = archive_entry_mtime_nsec(entry);
   if (nsec < a->newer_ctime_nsec)
    return (1);
   if (nsec == a->newer_ctime_nsec &&
       (a->newer_ctime_filter & ARCHIVE_MATCH_EQUAL)
         == 0)
    return (1);
  }
 }
 if (a->older_ctime_filter) {

  if (archive_entry_ctime_is_set(entry))
   sec = archive_entry_ctime(entry);
  else
   sec = archive_entry_mtime(entry);
  if (sec > a->older_ctime_sec)
   return (1);
  if (sec == a->older_ctime_sec) {
   if (archive_entry_ctime_is_set(entry))
    nsec = archive_entry_ctime_nsec(entry);
   else
    nsec = archive_entry_mtime_nsec(entry);
   if (nsec > a->older_ctime_nsec)
    return (1);
   if (nsec == a->older_ctime_nsec &&
       (a->older_ctime_filter & ARCHIVE_MATCH_EQUAL)
         == 0)
    return (1);
  }
 }
 if (a->newer_mtime_filter) {
  sec = archive_entry_mtime(entry);
  if (sec < a->newer_mtime_sec)
   return (1);
  if (sec == a->newer_mtime_sec) {
   nsec = archive_entry_mtime_nsec(entry);
   if (nsec < a->newer_mtime_nsec)
    return (1);
   if (nsec == a->newer_mtime_nsec &&
       (a->newer_mtime_filter & ARCHIVE_MATCH_EQUAL)
          == 0)
    return (1);
  }
 }
 if (a->older_mtime_filter) {
  sec = archive_entry_mtime(entry);
  if (sec > a->older_mtime_sec)
   return (1);
  nsec = archive_entry_mtime_nsec(entry);
  if (sec == a->older_mtime_sec) {
   if (nsec > a->older_mtime_nsec)
    return (1);
   if (nsec == a->older_mtime_nsec &&
       (a->older_mtime_filter & ARCHIVE_MATCH_EQUAL)
          == 0)
    return (1);
  }
 }


 if (a->exclusion_entry_list.count == 0)
  return (0);





 (void)rb_ops_wcs;
 pathname = archive_entry_pathname(entry);
 a->exclusion_tree.rbt_ops = &rb_ops_mbs;

 if (pathname == ((void*)0))
  return (0);

 f = (struct match_file *)__archive_rb_tree_find_node(
  &(a->exclusion_tree), pathname);

 if (f == ((void*)0))
  return (0);

 if (f->flag & ARCHIVE_MATCH_CTIME) {
  sec = archive_entry_ctime(entry);
  if (f->ctime_sec > sec) {
   if (f->flag & ARCHIVE_MATCH_OLDER)
    return (1);
  } else if (f->ctime_sec < sec) {
   if (f->flag & ARCHIVE_MATCH_NEWER)
    return (1);
  } else {
   nsec = archive_entry_ctime_nsec(entry);
   if (f->ctime_nsec > nsec) {
    if (f->flag & ARCHIVE_MATCH_OLDER)
     return (1);
   } else if (f->ctime_nsec < nsec) {
    if (f->flag & ARCHIVE_MATCH_NEWER)
     return (1);
   } else if (f->flag & ARCHIVE_MATCH_EQUAL)
    return (1);
  }
 }
 if (f->flag & ARCHIVE_MATCH_MTIME) {
  sec = archive_entry_mtime(entry);
  if (f->mtime_sec > sec) {
   if (f->flag & ARCHIVE_MATCH_OLDER)
    return (1);
  } else if (f->mtime_sec < sec) {
   if (f->flag & ARCHIVE_MATCH_NEWER)
    return (1);
  } else {
   nsec = archive_entry_mtime_nsec(entry);
   if (f->mtime_nsec > nsec) {
    if (f->flag & ARCHIVE_MATCH_OLDER)
     return (1);
   } else if (f->mtime_nsec < nsec) {
    if (f->flag & ARCHIVE_MATCH_NEWER)
     return (1);
   } else if (f->flag & ARCHIVE_MATCH_EQUAL)
    return (1);
  }
 }
 return (0);
}
