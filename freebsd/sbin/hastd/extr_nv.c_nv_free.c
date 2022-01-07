
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv {int nv_ebuf; scalar_t__ nv_magic; } ;


 int NV_CHECK (struct nv*) ;
 int ebuf_free (int ) ;
 int free (struct nv*) ;

void
nv_free(struct nv *nv)
{

 if (nv == ((void*)0))
  return;

 NV_CHECK(nv);

 nv->nv_magic = 0;
 ebuf_free(nv->nv_ebuf);
 free(nv);
}
