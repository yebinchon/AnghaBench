
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dmu_buf_t ;
typedef int dmu_buf_impl_t ;


 int dbuf_rele (int *,void*) ;
 int kmem_free (int **,int) ;

void
dmu_buf_rele_array(dmu_buf_t **dbp_fake, int numbufs, void *tag)
{
 int i;
 dmu_buf_impl_t **dbp = (dmu_buf_impl_t **)dbp_fake;

 if (numbufs == 0)
  return;

 for (i = 0; i < numbufs; i++) {
  if (dbp[i])
   dbuf_rele(dbp[i], tag);
 }

 kmem_free(dbp, sizeof (dmu_buf_t *) * numbufs);
}
