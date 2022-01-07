
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int nvpair_t ;
struct TYPE_10__ {scalar_t__ nvl_error; } ;
typedef TYPE_1__ nvlist_t ;


 int ENOMEM ;
 scalar_t__ ERRNO_OR_DEFAULT (int ) ;
 int ERRNO_SET (scalar_t__) ;
 int nv_free (TYPE_1__**) ;
 int nvlist_destroy (TYPE_1__*) ;
 scalar_t__ nvlist_error (TYPE_1__*) ;
 int * nvlist_get_pararr (TYPE_1__*,int *) ;
 int nvlist_move_nvpair (TYPE_1__*,int *) ;
 int * nvpair_move_nvlist_array (char const*,TYPE_1__**,size_t) ;

void
nvlist_move_nvlist_array(nvlist_t *nvl, const char *name, nvlist_t **value,
    size_t nitems)
{
 nvpair_t *nvp;
 size_t i;

 if (nvlist_error(nvl) != 0) {
  if (value != ((void*)0)) {
   for (i = 0; i < nitems; i++) {
    if (nvlist_get_pararr(value[i], ((void*)0)) == ((void*)0))
     nvlist_destroy(value[i]);
   }
  }
  nv_free(value);
  ERRNO_SET(nvlist_error(nvl));
  return;
 }

 nvp = nvpair_move_nvlist_array(name, value, nitems);
 if (nvp == ((void*)0)) {
  nvl->nvl_error = ERRNO_OR_DEFAULT(ENOMEM);
  ERRNO_SET(nvl->nvl_error);
 } else {
  (void)nvlist_move_nvpair(nvl, nvp);
 }
}
