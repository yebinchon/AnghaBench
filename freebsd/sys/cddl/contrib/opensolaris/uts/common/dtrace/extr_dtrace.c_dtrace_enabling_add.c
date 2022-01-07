
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dten_probegen; int dten_ndesc; int dten_maxdesc; int ** dten_desc; int * dten_prev; int * dten_next; } ;
typedef TYPE_1__ dtrace_enabling_t ;
typedef int dtrace_ecbdesc_t ;


 int ASSERT (int) ;
 int KM_SLEEP ;
 int bcopy (int **,int **,size_t) ;
 int kmem_free (int **,size_t) ;
 int ** kmem_zalloc (size_t,int ) ;

__attribute__((used)) static void
dtrace_enabling_add(dtrace_enabling_t *enab, dtrace_ecbdesc_t *ecb)
{
 dtrace_ecbdesc_t **ndesc;
 size_t osize, nsize;





 ASSERT(enab->dten_probegen == 0);
 ASSERT(enab->dten_next == ((void*)0) && enab->dten_prev == ((void*)0));

 if (enab->dten_ndesc < enab->dten_maxdesc) {
  enab->dten_desc[enab->dten_ndesc++] = ecb;
  return;
 }

 osize = enab->dten_maxdesc * sizeof (dtrace_enabling_t *);

 if (enab->dten_maxdesc == 0) {
  enab->dten_maxdesc = 1;
 } else {
  enab->dten_maxdesc <<= 1;
 }

 ASSERT(enab->dten_ndesc < enab->dten_maxdesc);

 nsize = enab->dten_maxdesc * sizeof (dtrace_enabling_t *);
 ndesc = kmem_zalloc(nsize, KM_SLEEP);
 bcopy(enab->dten_desc, ndesc, osize);
 if (enab->dten_desc != ((void*)0))
  kmem_free(enab->dten_desc, osize);

 enab->dten_desc = ndesc;
 enab->dten_desc[enab->dten_ndesc++] = ecb;
}
