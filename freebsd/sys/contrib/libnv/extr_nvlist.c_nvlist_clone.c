
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int nvpair_t ;
struct TYPE_10__ {scalar_t__ nvl_error; int nvl_flags; } ;
typedef TYPE_1__ nvlist_t ;


 int ERRNO_SET (scalar_t__) ;
 int NVLIST_ASSERT (TYPE_1__ const*) ;
 int NV_FLAG_PUBLIC_MASK ;
 TYPE_1__* nvlist_create (int) ;
 int nvlist_destroy (TYPE_1__*) ;
 int * nvlist_first_nvpair (TYPE_1__ const*) ;
 int nvlist_move_nvpair (TYPE_1__*,int *) ;
 int * nvlist_next_nvpair (TYPE_1__ const*,int *) ;
 int * nvpair_clone (int *) ;

nvlist_t *
nvlist_clone(const nvlist_t *nvl)
{
 nvlist_t *newnvl;
 nvpair_t *nvp, *newnvp;

 NVLIST_ASSERT(nvl);

 if (nvl->nvl_error != 0) {
  ERRNO_SET(nvl->nvl_error);
  return (((void*)0));
 }

 newnvl = nvlist_create(nvl->nvl_flags & NV_FLAG_PUBLIC_MASK);
 for (nvp = nvlist_first_nvpair(nvl); nvp != ((void*)0);
     nvp = nvlist_next_nvpair(nvl, nvp)) {
  newnvp = nvpair_clone(nvp);
  if (newnvp == ((void*)0))
   break;
  (void)nvlist_move_nvpair(newnvl, newnvp);
 }
 if (nvp != ((void*)0)) {
  nvlist_destroy(newnvl);
  return (((void*)0));
 }
 return (newnvl);
}
