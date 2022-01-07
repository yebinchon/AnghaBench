
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshbuf {struct sshbuf const* parent; } ;



const struct sshbuf *
sshbuf_parent(const struct sshbuf *buf)
{
 return buf->parent;
}
