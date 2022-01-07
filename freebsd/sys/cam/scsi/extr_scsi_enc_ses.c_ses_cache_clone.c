
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ses_element_t ;
typedef int ses_cache_t ;
typedef int enc_softc_t ;
struct TYPE_8__ {struct TYPE_8__* elm_private; } ;
typedef TYPE_1__ enc_element_t ;
struct TYPE_9__ {int nelms; TYPE_1__* elm_map; int * private; } ;
typedef TYPE_2__ enc_cache_t ;


 int M_SCSIENC ;
 int M_WAITOK ;
 void* malloc (int,int ,int ) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int ses_cache_free (int *,TYPE_2__*) ;

__attribute__((used)) static void
ses_cache_clone(enc_softc_t *enc, enc_cache_t *src, enc_cache_t *dst)
{
 ses_cache_t *dst_ses_cache;
 ses_cache_t *src_ses_cache;
 enc_element_t *src_elm;
 enc_element_t *dst_elm;
 enc_element_t *last_elm;

 ses_cache_free(enc, dst);
 src_ses_cache = src->private;
 dst_ses_cache = dst->private;





 *dst = *src;
 *dst_ses_cache = *src_ses_cache;





 dst->private = dst_ses_cache;





 dst->elm_map = malloc(dst->nelms * sizeof(enc_element_t),
     M_SCSIENC, M_WAITOK);
 memcpy(dst->elm_map, src->elm_map, dst->nelms * sizeof(enc_element_t));
 for (dst_elm = dst->elm_map, src_elm = src->elm_map,
      last_elm = &src->elm_map[src->nelms];
      src_elm != last_elm; src_elm++, dst_elm++) {

  dst_elm->elm_private = malloc(sizeof(ses_element_t),
      M_SCSIENC, M_WAITOK);
  memcpy(dst_elm->elm_private, src_elm->elm_private,
         sizeof(ses_element_t));
 }
}
