
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshbuf {scalar_t__ off; scalar_t__ size; } ;


 int SSHBUF_DBG (char*) ;
 int SSHBUF_TELL (char*) ;
 int SSH_ERR_MESSAGE_INCOMPLETE ;
 int sshbuf_check_sanity (struct sshbuf*) ;
 size_t sshbuf_len (struct sshbuf*) ;

int
sshbuf_consume(struct sshbuf *buf, size_t len)
{
 int r;

 SSHBUF_DBG(("len = %zu", len));
 if ((r = sshbuf_check_sanity(buf)) != 0)
  return r;
 if (len == 0)
  return 0;
 if (len > sshbuf_len(buf))
  return SSH_ERR_MESSAGE_INCOMPLETE;
 buf->off += len;

 if (buf->off == buf->size)
  buf->off = buf->size = 0;
 SSHBUF_TELL("done");
 return 0;
}
