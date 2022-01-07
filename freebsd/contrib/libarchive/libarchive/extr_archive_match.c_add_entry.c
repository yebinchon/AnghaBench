
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct match_file {int flag; int pathname; int ctime_nsec; int ctime_sec; int mtime_nsec; int mtime_sec; int node; } ;
struct TYPE_3__ {int * rbt_ops; } ;
struct archive_match {int setflag; int exclusion_entry_list; TYPE_1__ exclusion_tree; int archive; } ;
struct archive_entry {int dummy; } ;


 int ARCHIVE_FAILED ;
 int ARCHIVE_OK ;
 int EINVAL ;
 int TIME_IS_SET ;
 scalar_t__ __archive_rb_tree_find_node (TYPE_1__*,void const*) ;
 int __archive_rb_tree_insert_node (TYPE_1__*,int *) ;
 int archive_entry_ctime (struct archive_entry*) ;
 int archive_entry_ctime_nsec (struct archive_entry*) ;
 int archive_entry_mtime (struct archive_entry*) ;
 int archive_entry_mtime_nsec (struct archive_entry*) ;
 void* archive_entry_pathname (struct archive_entry*) ;
 void* archive_entry_pathname_w (struct archive_entry*) ;
 int archive_mstring_clean (int *) ;
 int archive_mstring_copy_mbs (int *,void const*) ;
 int archive_mstring_copy_wcs (int *,void const*) ;
 int archive_set_error (int *,int ,char*) ;
 struct match_file* calloc (int,int) ;
 int entry_list_add (int *,struct match_file*) ;
 int error_nomem (struct archive_match*) ;
 int free (struct match_file*) ;
 int rb_ops_mbs ;
 int rb_ops_wcs ;

__attribute__((used)) static int
add_entry(struct archive_match *a, int flag,
    struct archive_entry *entry)
{
 struct match_file *f;
 const void *pathname;
 int r;

 f = calloc(1, sizeof(*f));
 if (f == ((void*)0))
  return (error_nomem(a));
 (void)rb_ops_wcs;
 pathname = archive_entry_pathname(entry);
 if (pathname == ((void*)0)) {
  free(f);
  archive_set_error(&(a->archive), EINVAL, "pathname is NULL");
  return (ARCHIVE_FAILED);
 }
 archive_mstring_copy_mbs(&(f->pathname), pathname);
 a->exclusion_tree.rbt_ops = &rb_ops_mbs;

 f->flag = flag;
 f->mtime_sec = archive_entry_mtime(entry);
 f->mtime_nsec = archive_entry_mtime_nsec(entry);
 f->ctime_sec = archive_entry_ctime(entry);
 f->ctime_nsec = archive_entry_ctime_nsec(entry);
 r = __archive_rb_tree_insert_node(&(a->exclusion_tree), &(f->node));
 if (!r) {
  struct match_file *f2;


  f2 = (struct match_file *)__archive_rb_tree_find_node(
   &(a->exclusion_tree), pathname);
  if (f2 != ((void*)0)) {
   f2->flag = f->flag;
   f2->mtime_sec = f->mtime_sec;
   f2->mtime_nsec = f->mtime_nsec;
   f2->ctime_sec = f->ctime_sec;
   f2->ctime_nsec = f->ctime_nsec;
  }

  archive_mstring_clean(&(f->pathname));
  free(f);
  return (ARCHIVE_OK);
 }
 entry_list_add(&(a->exclusion_entry_list), f);
 a->setflag |= TIME_IS_SET;
 return (ARCHIVE_OK);
}
