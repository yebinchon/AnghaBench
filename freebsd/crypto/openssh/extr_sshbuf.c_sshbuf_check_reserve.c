
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshbuf {int refcount; size_t max_size; size_t size; size_t off; scalar_t__ readonly; } ;


 int SSHBUF_TELL (char*) ;
 int SSH_ERR_BUFFER_READ_ONLY ;
 int SSH_ERR_NO_BUFFER_SPACE ;
 int sshbuf_check_sanity (struct sshbuf const*) ;

int
sshbuf_check_reserve(const struct sshbuf *buf, size_t len)
{
 int r;

 if ((r = sshbuf_check_sanity(buf)) != 0)
  return r;
 if (buf->readonly || buf->refcount > 1)
  return SSH_ERR_BUFFER_READ_ONLY;
 SSHBUF_TELL("check");

 if (len > buf->max_size || buf->max_size - len < buf->size - buf->off)
  return SSH_ERR_NO_BUFFER_SPACE;
 return 0;
}
