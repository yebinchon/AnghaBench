
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int nvpriv_t ;
struct TYPE_9__ {scalar_t__ nvl_priv; int nvl_nvflag; } ;
typedef TYPE_1__ nvlist_t ;


 int ENOMEM ;
 int * nv_priv_alloc_embedded (int *) ;
 int nvlist_copy_pairs (TYPE_1__*,TYPE_1__*) ;
 int nvlist_free (TYPE_1__*) ;
 int nvlist_init (TYPE_1__*,int ,int *) ;

__attribute__((used)) static int
nvlist_copy_embedded(nvlist_t *nvl, nvlist_t *onvl, nvlist_t *emb_nvl)
{
 nvpriv_t *priv;
 int err;

 if ((priv = nv_priv_alloc_embedded((nvpriv_t *)(uintptr_t)
     nvl->nvl_priv)) == ((void*)0))
  return (ENOMEM);

 nvlist_init(emb_nvl, onvl->nvl_nvflag, priv);

 if ((err = nvlist_copy_pairs(onvl, emb_nvl)) != 0) {
  nvlist_free(emb_nvl);
  emb_nvl->nvl_priv = 0;
 }

 return (err);
}
