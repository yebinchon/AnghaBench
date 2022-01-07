
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ses_iterator {int * cache; int * enc; } ;
typedef int enc_softc_t ;
typedef int enc_cache_t ;


 int ses_iter_reset (struct ses_iterator*) ;

__attribute__((used)) static void
ses_iter_init(enc_softc_t *enc, enc_cache_t *cache, struct ses_iterator *iter)
{
 iter->enc = enc;
 iter->cache = cache;
 ses_iter_reset(iter);
}
