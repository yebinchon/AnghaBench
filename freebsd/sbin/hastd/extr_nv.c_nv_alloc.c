
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv {int nv_magic; scalar_t__ nv_error; int * nv_ebuf; } ;


 int NV_MAGIC ;
 int * ebuf_alloc (int ) ;
 int free (struct nv*) ;
 struct nv* malloc (int) ;

struct nv *
nv_alloc(void)
{
 struct nv *nv;

 nv = malloc(sizeof(*nv));
 if (nv == ((void*)0))
  return (((void*)0));
 nv->nv_ebuf = ebuf_alloc(0);
 if (nv->nv_ebuf == ((void*)0)) {
  free(nv);
  return (((void*)0));
 }
 nv->nv_error = 0;
 nv->nv_magic = NV_MAGIC;
 return (nv);
}
