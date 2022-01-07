
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sshbuf {int dummy; } ;
struct TYPE_3__ {int flags; int uid; int gid; int perm; int atime; int mtime; int size; } ;
typedef TYPE_1__ Attrib ;


 int SSH2_FILEXFER_ATTR_ACMODTIME ;
 int SSH2_FILEXFER_ATTR_PERMISSIONS ;
 int SSH2_FILEXFER_ATTR_SIZE ;
 int SSH2_FILEXFER_ATTR_UIDGID ;
 int sshbuf_put_u32 (struct sshbuf*,int) ;
 int sshbuf_put_u64 (struct sshbuf*,int ) ;

int
encode_attrib(struct sshbuf *b, const Attrib *a)
{
 int r;

 if ((r = sshbuf_put_u32(b, a->flags)) != 0)
  return r;
 if (a->flags & SSH2_FILEXFER_ATTR_SIZE) {
  if ((r = sshbuf_put_u64(b, a->size)) != 0)
   return r;
 }
 if (a->flags & SSH2_FILEXFER_ATTR_UIDGID) {
  if ((r = sshbuf_put_u32(b, a->uid)) != 0 ||
      (r = sshbuf_put_u32(b, a->gid)) != 0)
   return r;
 }
 if (a->flags & SSH2_FILEXFER_ATTR_PERMISSIONS) {
  if ((r = sshbuf_put_u32(b, a->perm)) != 0)
   return r;
 }
 if (a->flags & SSH2_FILEXFER_ATTR_ACMODTIME) {
  if ((r = sshbuf_put_u32(b, a->atime)) != 0 ||
      (r = sshbuf_put_u32(b, a->mtime)) != 0)
   return r;
 }
 return 0;
}
