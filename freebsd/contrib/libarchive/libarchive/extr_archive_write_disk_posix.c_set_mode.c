
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_write_disk {int todo; scalar_t__ gid; int flags; scalar_t__ uid; scalar_t__ user_uid; scalar_t__ fd; int archive; int name; int mode; TYPE_1__* pst; } ;
struct TYPE_2__ {scalar_t__ st_gid; scalar_t__ st_uid; } ;


 int ARCHIVE_EXTRACT_OWNER ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;



 int S_ISDIR (int ) ;
 int S_ISGID ;
 scalar_t__ S_ISLNK (int ) ;
 int S_ISUID ;
 int TODO_SGID_CHECK ;
 int TODO_SUID ;
 int TODO_SUID_CHECK ;
 int archive_set_error (int *,int,char*,...) ;
 int chmod (int ,int) ;
 int errno ;
 int fchmod (scalar_t__,int) ;
 int lazy_stat (struct archive_write_disk*) ;
 scalar_t__ lchmod (int ,int) ;

__attribute__((used)) static int
set_mode(struct archive_write_disk *a, int mode)
{
 int r = ARCHIVE_OK;
 int r2;
 mode &= 07777;

 if (a->todo & TODO_SGID_CHECK) {






  if ((r = lazy_stat(a)) != ARCHIVE_OK)
   return (r);
  if (a->pst->st_gid != a->gid) {
   mode &= ~ S_ISGID;
   if (a->flags & ARCHIVE_EXTRACT_OWNER) {







    archive_set_error(&a->archive, -1,
        "Can't restore SGID bit");
    r = ARCHIVE_WARN;
   }
  }

  if (a->pst->st_uid != a->uid
      && (a->todo & TODO_SUID)) {
   mode &= ~ S_ISUID;
   if (a->flags & ARCHIVE_EXTRACT_OWNER) {
    archive_set_error(&a->archive, -1,
        "Can't restore SUID bit");
    r = ARCHIVE_WARN;
   }
  }
  a->todo &= ~TODO_SGID_CHECK;
  a->todo &= ~TODO_SUID_CHECK;
 } else if (a->todo & TODO_SUID_CHECK) {





  if (a->user_uid != a->uid) {
   mode &= ~ S_ISUID;
   if (a->flags & ARCHIVE_EXTRACT_OWNER) {
    archive_set_error(&a->archive, -1,
        "Can't make file SUID");
    r = ARCHIVE_WARN;
   }
  }
  a->todo &= ~TODO_SUID_CHECK;
 }

 if (S_ISLNK(a->mode)) {
 } else if (!S_ISDIR(a->mode)) {
  r2 = chmod(a->name, mode);

  if (r2 != 0) {
   archive_set_error(&a->archive, errno,
       "Can't set permissions to 0%o", (int)mode);
   r = ARCHIVE_WARN;
  }
 }
 return (r);
}
