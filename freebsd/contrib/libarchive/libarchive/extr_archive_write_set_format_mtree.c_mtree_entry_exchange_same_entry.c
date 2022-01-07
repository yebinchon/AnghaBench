
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s; } ;
struct mtree_entry {int mode; int ino; int devminor; int devmajor; int rdevminor; int rdevmajor; int mtime_nsec; int mtime; int fflags_clear; int fflags_set; int gid; int uid; int size; int filetype; int nlink; int fflags_text; int gname; int uname; int symlink; TYPE_1__ pathname; } ;
struct archive_write {int archive; } ;


 int AE_IFMT ;
 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_WARN ;
 int archive_set_error (int *,int ,char*,int ) ;
 int archive_string_concat (int *,int *) ;
 int archive_string_empty (int *) ;

__attribute__((used)) static int
mtree_entry_exchange_same_entry(struct archive_write *a, struct mtree_entry *np,
    struct mtree_entry *file)
{

 if ((np->mode & AE_IFMT) != (file->mode & AE_IFMT)) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
      "Found duplicate entries `%s' and its file type is "
      "different",
      np->pathname.s);
  return (ARCHIVE_FAILED);
 }


 archive_string_empty(&np->symlink);
 archive_string_concat(&np->symlink, &file->symlink);
 archive_string_empty(&np->uname);
 archive_string_concat(&np->uname, &file->uname);
 archive_string_empty(&np->gname);
 archive_string_concat(&np->gname, &file->gname);
 archive_string_empty(&np->fflags_text);
 archive_string_concat(&np->fflags_text, &file->fflags_text);
 np->nlink = file->nlink;
 np->filetype = file->filetype;
 np->mode = file->mode;
 np->size = file->size;
 np->uid = file->uid;
 np->gid = file->gid;
 np->fflags_set = file->fflags_set;
 np->fflags_clear = file->fflags_clear;
 np->mtime = file->mtime;
 np->mtime_nsec = file->mtime_nsec;
 np->rdevmajor = file->rdevmajor;
 np->rdevminor = file->rdevminor;
 np->devmajor = file->devmajor;
 np->devminor = file->devminor;
 np->ino = file->ino;

 return (ARCHIVE_WARN);
}
