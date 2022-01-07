
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshbuf {scalar_t__ refcount; int alloc; struct sshbuf* d; int readonly; struct sshbuf* parent; } ;


 int explicit_bzero (struct sshbuf*,int) ;
 int free (struct sshbuf*) ;
 scalar_t__ sshbuf_check_sanity (struct sshbuf*) ;

void
sshbuf_free(struct sshbuf *buf)
{
 if (buf == ((void*)0))
  return;






 if (sshbuf_check_sanity(buf) != 0)
  return;




 sshbuf_free(buf->parent);
 buf->parent = ((void*)0);





 buf->refcount--;
 if (buf->refcount > 0)
  return;
 if (!buf->readonly) {
  explicit_bzero(buf->d, buf->alloc);
  free(buf->d);
 }
 explicit_bzero(buf, sizeof(*buf));
 free(buf);
}
