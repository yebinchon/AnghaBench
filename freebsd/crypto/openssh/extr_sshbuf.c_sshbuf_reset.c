
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshbuf {int refcount; scalar_t__ alloc; int * d; int * cd; scalar_t__ size; scalar_t__ off; scalar_t__ readonly; } ;


 scalar_t__ SSHBUF_SIZE_INIT ;
 int explicit_bzero (int *,scalar_t__) ;
 int * recallocarray (int *,scalar_t__,scalar_t__,int) ;
 int sshbuf_check_sanity (struct sshbuf*) ;

void
sshbuf_reset(struct sshbuf *buf)
{
 u_char *d;

 if (buf->readonly || buf->refcount > 1) {

  buf->off = buf->size;
  return;
 }
 (void) sshbuf_check_sanity(buf);
 buf->off = buf->size = 0;
 if (buf->alloc != SSHBUF_SIZE_INIT) {
  if ((d = recallocarray(buf->d, buf->alloc, SSHBUF_SIZE_INIT,
      1)) != ((void*)0)) {
   buf->cd = buf->d = d;
   buf->alloc = SSHBUF_SIZE_INIT;
  }
 }
 explicit_bzero(buf->d, SSHBUF_SIZE_INIT);
}
