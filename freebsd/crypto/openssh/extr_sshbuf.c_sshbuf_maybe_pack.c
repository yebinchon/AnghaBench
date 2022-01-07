
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshbuf {int off; int refcount; int size; scalar_t__ d; scalar_t__ readonly; } ;


 int SSHBUF_DBG (char*) ;
 int SSHBUF_PACK_MIN ;
 int SSHBUF_TELL (char*) ;
 int memmove (scalar_t__,scalar_t__,int) ;

__attribute__((used)) static void
sshbuf_maybe_pack(struct sshbuf *buf, int force)
{
 SSHBUF_DBG(("force %d", force));
 SSHBUF_TELL("pre-pack");
 if (buf->off == 0 || buf->readonly || buf->refcount > 1)
  return;
 if (force ||
     (buf->off >= SSHBUF_PACK_MIN && buf->off >= buf->size / 2)) {
  memmove(buf->d, buf->d + buf->off, buf->size - buf->off);
  buf->size -= buf->off;
  buf->off = 0;
  SSHBUF_TELL("packed");
 }
}
