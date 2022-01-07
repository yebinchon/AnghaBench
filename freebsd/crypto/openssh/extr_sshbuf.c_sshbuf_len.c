
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshbuf {size_t size; size_t off; } ;


 scalar_t__ sshbuf_check_sanity (struct sshbuf const*) ;

size_t
sshbuf_len(const struct sshbuf *buf)
{
 if (sshbuf_check_sanity(buf) != 0)
  return 0;
 return buf->size - buf->off;
}
