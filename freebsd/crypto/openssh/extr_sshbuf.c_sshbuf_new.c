
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshbuf {int alloc; int refcount; int * d; int * cd; int * parent; scalar_t__ readonly; int max_size; } ;


 int SSHBUF_SIZE_INIT ;
 int SSHBUF_SIZE_MAX ;
 void* calloc (int,int) ;
 int free (struct sshbuf*) ;

struct sshbuf *
sshbuf_new(void)
{
 struct sshbuf *ret;

 if ((ret = calloc(sizeof(*ret), 1)) == ((void*)0))
  return ((void*)0);
 ret->alloc = SSHBUF_SIZE_INIT;
 ret->max_size = SSHBUF_SIZE_MAX;
 ret->readonly = 0;
 ret->refcount = 1;
 ret->parent = ((void*)0);
 if ((ret->cd = ret->d = calloc(1, ret->alloc)) == ((void*)0)) {
  free(ret);
  return ((void*)0);
 }
 return ret;
}
