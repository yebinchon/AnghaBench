
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshbuf {size_t alloc; size_t size; size_t max_size; int readonly; int refcount; int * d; void const* cd; int * parent; } ;


 size_t SSHBUF_SIZE_MAX ;
 struct sshbuf* calloc (int,int) ;

struct sshbuf *
sshbuf_from(const void *blob, size_t len)
{
 struct sshbuf *ret;

 if (blob == ((void*)0) || len > SSHBUF_SIZE_MAX ||
     (ret = calloc(sizeof(*ret), 1)) == ((void*)0))
  return ((void*)0);
 ret->alloc = ret->size = ret->max_size = len;
 ret->readonly = 1;
 ret->refcount = 1;
 ret->parent = ((void*)0);
 ret->cd = blob;
 ret->d = ((void*)0);
 return ret;
}
