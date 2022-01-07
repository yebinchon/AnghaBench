
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int st_mtime; int st_atime; int st_mode; int st_gid; int st_uid; int st_size; } ;
struct TYPE_3__ {int flags; int mtime; int atime; int perm; int gid; int uid; int size; } ;
typedef TYPE_1__ Attrib ;


 int SSH2_FILEXFER_ATTR_ACMODTIME ;
 int SSH2_FILEXFER_ATTR_PERMISSIONS ;
 int SSH2_FILEXFER_ATTR_SIZE ;
 int SSH2_FILEXFER_ATTR_UIDGID ;
 int memset (struct stat*,int ,int) ;

void
attrib_to_stat(const Attrib *a, struct stat *st)
{
 memset(st, 0, sizeof(*st));

 if (a->flags & SSH2_FILEXFER_ATTR_SIZE)
  st->st_size = a->size;
 if (a->flags & SSH2_FILEXFER_ATTR_UIDGID) {
  st->st_uid = a->uid;
  st->st_gid = a->gid;
 }
 if (a->flags & SSH2_FILEXFER_ATTR_PERMISSIONS)
  st->st_mode = a->perm;
 if (a->flags & SSH2_FILEXFER_ATTR_ACMODTIME) {
  st->st_atime = a->atime;
  st->st_mtime = a->mtime;
 }
}
