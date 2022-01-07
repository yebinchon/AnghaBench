
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int nvpair_t ;
struct TYPE_6__ {int nvl_flags; int nvl_head; int nvl_error; } ;
typedef TYPE_1__ nvlist_t ;


 int EEXIST ;
 int ENOMEM ;
 int ERRNO_OR_DEFAULT (int ) ;
 int ERRNO_SET (scalar_t__) ;
 int NVPAIR_ASSERT (int const*) ;
 int NV_FLAG_NO_UNIQUE ;
 scalar_t__ nvlist_error (TYPE_1__*) ;
 scalar_t__ nvlist_exists (TYPE_1__*,int ) ;
 int * nvpair_clone (int const*) ;
 int nvpair_insert (int *,int *,TYPE_1__*) ;
 int nvpair_name (int const*) ;

void
nvlist_add_nvpair(nvlist_t *nvl, const nvpair_t *nvp)
{
 nvpair_t *newnvp;

 NVPAIR_ASSERT(nvp);

 if (nvlist_error(nvl) != 0) {
  ERRNO_SET(nvlist_error(nvl));
  return;
 }
 if ((nvl->nvl_flags & NV_FLAG_NO_UNIQUE) == 0) {
  if (nvlist_exists(nvl, nvpair_name(nvp))) {
   nvl->nvl_error = EEXIST;
   ERRNO_SET(nvlist_error(nvl));
   return;
  }
 }

 newnvp = nvpair_clone(nvp);
 if (newnvp == ((void*)0)) {
  nvl->nvl_error = ERRNO_OR_DEFAULT(ENOMEM);
  ERRNO_SET(nvlist_error(nvl));
  return;
 }

 nvpair_insert(&nvl->nvl_head, newnvp, nvl);
}
