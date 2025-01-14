
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int st_mtime; int st_atime; int st_mode; int st_gid; int st_uid; int st_size; } ;
struct TYPE_4__ {int mtime; int atime; int flags; int perm; int gid; int uid; int size; } ;
typedef TYPE_1__ Attrib ;


 int SSH2_FILEXFER_ATTR_ACMODTIME ;
 int SSH2_FILEXFER_ATTR_PERMISSIONS ;
 int SSH2_FILEXFER_ATTR_SIZE ;
 int SSH2_FILEXFER_ATTR_UIDGID ;
 int attrib_clear (TYPE_1__*) ;

void
stat_to_attrib(const struct stat *st, Attrib *a)
{
 attrib_clear(a);
 a->flags = 0;
 a->flags |= SSH2_FILEXFER_ATTR_SIZE;
 a->size = st->st_size;
 a->flags |= SSH2_FILEXFER_ATTR_UIDGID;
 a->uid = st->st_uid;
 a->gid = st->st_gid;
 a->flags |= SSH2_FILEXFER_ATTR_PERMISSIONS;
 a->perm = st->st_mode;
 a->flags |= SSH2_FILEXFER_ATTR_ACMODTIME;
 a->atime = st->st_atime;
 a->mtime = st->st_mtime;
}
