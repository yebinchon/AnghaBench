
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshbuf {int refcount; struct sshbuf* parent; } ;


 int sshbuf_check_sanity (struct sshbuf*) ;

int
sshbuf_set_parent(struct sshbuf *child, struct sshbuf *parent)
{
 int r;

 if ((r = sshbuf_check_sanity(child)) != 0 ||
     (r = sshbuf_check_sanity(parent)) != 0)
  return r;
 child->parent = parent;
 child->parent->refcount++;
 return 0;
}
