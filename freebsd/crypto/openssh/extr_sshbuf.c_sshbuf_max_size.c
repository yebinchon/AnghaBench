
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshbuf {size_t max_size; } ;



size_t
sshbuf_max_size(const struct sshbuf *buf)
{
 return buf->max_size;
}
