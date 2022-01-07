
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int nvpriv_t ;
typedef int nvlist_t ;
typedef int nv_alloc_t ;


 int EINVAL ;
 int ENOMEM ;
 int NV_ALIGN (int) ;
 int nv_mem_free (int *,int *,int) ;
 int * nv_mem_zalloc (int *,int ) ;
 int * nv_priv_alloc (int *) ;
 int nvlist_init (int *,int ,int *) ;

int
nvlist_xalloc(nvlist_t **nvlp, uint_t nvflag, nv_alloc_t *nva)
{
 nvpriv_t *priv;

 if (nvlp == ((void*)0) || nva == ((void*)0))
  return (EINVAL);

 if ((priv = nv_priv_alloc(nva)) == ((void*)0))
  return (ENOMEM);

 if ((*nvlp = nv_mem_zalloc(priv,
     NV_ALIGN(sizeof (nvlist_t)))) == ((void*)0)) {
  nv_mem_free(priv, priv, sizeof (nvpriv_t));
  return (ENOMEM);
 }

 nvlist_init(*nvlp, nvflag, priv);

 return (0);
}
