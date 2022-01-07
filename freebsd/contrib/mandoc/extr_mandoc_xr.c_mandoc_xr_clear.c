
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mandoc_xr {int dummy; } ;


 int free (struct mandoc_xr*) ;
 int ohash_delete (int *) ;
 struct mandoc_xr* ohash_first (int *,unsigned int*) ;
 struct mandoc_xr* ohash_next (int *,unsigned int*) ;
 int * xr_hash ;

__attribute__((used)) static void
mandoc_xr_clear(void)
{
 struct mandoc_xr *xr;
 unsigned int slot;

 if (xr_hash == ((void*)0))
  return;
 for (xr = ohash_first(xr_hash, &slot); xr != ((void*)0);
      xr = ohash_next(xr_hash, &slot))
  free(xr);
 ohash_delete(xr_hash);
}
