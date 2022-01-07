
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv {int nv_error; } ;


 int ENOMEM ;
 int NV_CHECK (struct nv const*) ;

int
nv_error(const struct nv *nv)
{

 if (nv == ((void*)0))
  return (ENOMEM);

 NV_CHECK(nv);

 return (nv->nv_error);
}
