
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nvp_nbuckets; int nvp_nentries; int ** nvp_hashtable; } ;
typedef TYPE_1__ nvpriv_t ;
typedef int i_nvp_t ;


 int ASSERT0 (int) ;
 int nv_mem_free (TYPE_1__*,int **,int) ;

__attribute__((used)) static void
nvt_tab_free(nvpriv_t *priv)
{
 i_nvp_t **tab = priv->nvp_hashtable;
 if (tab == ((void*)0)) {
  ASSERT0(priv->nvp_nbuckets);
  ASSERT0(priv->nvp_nentries);
  return;
 }

 nv_mem_free(priv, tab, priv->nvp_nbuckets * sizeof (i_nvp_t *));

 priv->nvp_hashtable = ((void*)0);
 priv->nvp_nbuckets = 0;
 priv->nvp_nentries = 0;
}
