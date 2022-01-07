
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv {int nv_error; } ;


 int ENOMEM ;
 int NV_CHECK (struct nv*) ;

int
nv_set_error(struct nv *nv, int error)
{
 int preverr;

 if (nv == ((void*)0))
  return (ENOMEM);

 NV_CHECK(nv);

 preverr = nv->nv_error;
 nv->nv_error = error;
 return (preverr);
}
