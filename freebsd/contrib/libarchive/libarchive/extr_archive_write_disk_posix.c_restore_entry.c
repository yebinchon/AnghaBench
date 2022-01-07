
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * error; } ;
struct TYPE_5__ {scalar_t__ st_mode; scalar_t__ st_dev; scalar_t__ st_ino; } ;
struct archive_write_disk {int flags; scalar_t__ mode; int todo; int deferred; int * pst; int * name; TYPE_4__ archive; TYPE_1__ st; scalar_t__ skip_file_ino; scalar_t__ skip_file_dev; scalar_t__ skip_file_set; int entry; } ;
typedef scalar_t__ ino_t ;
typedef scalar_t__ dev_t ;


 int ARCHIVE_EXTRACT_CLEAR_NOCHANGE_FFLAGS ;
 int ARCHIVE_EXTRACT_NO_AUTODIR ;
 int ARCHIVE_EXTRACT_NO_OVERWRITE ;
 int ARCHIVE_EXTRACT_NO_OVERWRITE_NEWER ;
 int ARCHIVE_EXTRACT_UNLINK ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_OK ;
 int EEXIST ;
 int EISDIR ;
 int ENOENT ;
 int ENOTDIR ;
 scalar_t__ S_ISDIR (scalar_t__) ;
 int TODO_MODE ;
 int TODO_MODE_FORCE ;
 int * archive_entry_hardlink (int ) ;
 int archive_entry_unset_size (int ) ;
 int archive_set_error (TYPE_4__*,int,char*,...) ;
 int clear_nochange_fflags (struct archive_write_disk*) ;
 int create_filesystem_object (struct archive_write_disk*) ;
 int create_parent_dir (struct archive_write_disk*,int *) ;
 int errno ;
 int la_stat (int *,TYPE_1__*) ;
 int lstat (int *,TYPE_1__*) ;
 int older (TYPE_1__*,int ) ;
 scalar_t__ rmdir (int *) ;
 scalar_t__ unlink (int *) ;

__attribute__((used)) static int
restore_entry(struct archive_write_disk *a)
{
 int ret = ARCHIVE_OK, en;

 if (a->flags & ARCHIVE_EXTRACT_UNLINK && !S_ISDIR(a->mode)) {
  if (a->flags & ARCHIVE_EXTRACT_CLEAR_NOCHANGE_FFLAGS)
   (void)clear_nochange_fflags(a);
  if (unlink(a->name) == 0) {

   a->pst = ((void*)0);
  } else if (errno == ENOENT) {

  } else if (rmdir(a->name) == 0) {

   a->pst = ((void*)0);
  } else {

   archive_set_error(&a->archive, errno,
       "Could not unlink");
   return(ARCHIVE_FAILED);
  }
 }


 en = create_filesystem_object(a);

 if ((en == ENOTDIR || en == ENOENT)
     && !(a->flags & ARCHIVE_EXTRACT_NO_AUTODIR)) {

  create_parent_dir(a, a->name);

  en = create_filesystem_object(a);
 }

 if ((en == ENOENT) && (archive_entry_hardlink(a->entry) != ((void*)0))) {
  archive_set_error(&a->archive, en,
      "Hard-link target '%s' does not exist.",
      archive_entry_hardlink(a->entry));
  return (ARCHIVE_FAILED);
 }

 if ((en == EISDIR || en == EEXIST)
     && (a->flags & ARCHIVE_EXTRACT_NO_OVERWRITE)) {

  if (S_ISDIR(a->mode)) {

   a->todo = 0;
  }
  archive_entry_unset_size(a->entry);
  return (ARCHIVE_OK);
 }
 if (en == EISDIR) {

  if (rmdir(a->name) != 0) {
   archive_set_error(&a->archive, errno,
       "Can't remove already-existing dir");
   return (ARCHIVE_FAILED);
  }
  a->pst = ((void*)0);

  en = create_filesystem_object(a);
 } else if (en == EEXIST) {




  int r = 0;





  if (S_ISDIR(a->mode))
   r = la_stat(a->name, &a->st);




  if (r != 0 || !S_ISDIR(a->mode))
   r = lstat(a->name, &a->st);
  if (r != 0) {
   archive_set_error(&a->archive, errno,
       "Can't stat existing object");
   return (ARCHIVE_FAILED);
  }




  if ((a->flags & ARCHIVE_EXTRACT_NO_OVERWRITE_NEWER)
      && !S_ISDIR(a->st.st_mode)) {
   if (!older(&(a->st), a->entry)) {
    archive_entry_unset_size(a->entry);
    return (ARCHIVE_OK);
   }
  }


  if (a->skip_file_set &&
      a->st.st_dev == (dev_t)a->skip_file_dev &&
      a->st.st_ino == (ino_t)a->skip_file_ino) {
   archive_set_error(&a->archive, 0,
       "Refusing to overwrite archive");
   return (ARCHIVE_FAILED);
  }

  if (!S_ISDIR(a->st.st_mode)) {

   if (a->flags & ARCHIVE_EXTRACT_CLEAR_NOCHANGE_FFLAGS)
    (void)clear_nochange_fflags(a);
   if (unlink(a->name) != 0) {
    archive_set_error(&a->archive, errno,
        "Can't unlink already-existing object");
    return (ARCHIVE_FAILED);
   }
   a->pst = ((void*)0);

   en = create_filesystem_object(a);
  } else if (!S_ISDIR(a->mode)) {

   if (a->flags & ARCHIVE_EXTRACT_CLEAR_NOCHANGE_FFLAGS)
    (void)clear_nochange_fflags(a);
   if (rmdir(a->name) != 0) {
    archive_set_error(&a->archive, errno,
        "Can't replace existing directory with non-directory");
    return (ARCHIVE_FAILED);
   }

   en = create_filesystem_object(a);
  } else {







   if ((a->mode != a->st.st_mode)
       && (a->todo & TODO_MODE_FORCE))
    a->deferred |= (a->todo & TODO_MODE);

   en = 0;
  }
 }

 if (en) {

  if ((&a->archive)->error == ((void*)0))
   archive_set_error(&a->archive, en, "Can't create '%s'",
       a->name);
  return (ARCHIVE_FAILED);
 }

 a->pst = ((void*)0);
 return (ret);
}
