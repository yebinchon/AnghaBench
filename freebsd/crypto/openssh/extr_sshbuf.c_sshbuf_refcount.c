
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sshbuf {int refcount; } ;



u_int
sshbuf_refcount(const struct sshbuf *buf)
{
 return buf->refcount;
}
