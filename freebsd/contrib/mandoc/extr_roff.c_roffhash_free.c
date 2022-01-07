
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roffreq {int dummy; } ;
typedef struct roffreq ohash ;


 int free (struct roffreq*) ;
 int ohash_delete (struct roffreq*) ;
 struct roffreq* ohash_first (struct roffreq*,unsigned int*) ;
 struct roffreq* ohash_next (struct roffreq*,unsigned int*) ;

void
roffhash_free(struct ohash *htab)
{
 struct roffreq *req;
 unsigned int slot;

 if (htab == ((void*)0))
  return;
 for (req = ohash_first(htab, &slot); req != ((void*)0);
      req = ohash_next(htab, &slot))
  free(req);
 ohash_delete(htab);
 free(htab);
}
