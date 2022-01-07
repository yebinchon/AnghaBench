
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshbuf {size_t alloc; } ;



size_t
sshbuf_alloc(const struct sshbuf *buf)
{
 return buf->alloc;
}
