
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int nvpair_t ;
struct TYPE_9__ {scalar_t__ nvl_error; } ;
typedef TYPE_1__ nvlist_t ;


 int NVLIST_ASSERT (TYPE_1__ const*) ;




 int PJDLOG_ASSERT (int) ;
 TYPE_1__* nvlist_get_pararr (TYPE_1__ const*,void**) ;
 int * nvlist_next (TYPE_1__ const*,int*,void**) ;
 int nvpair_get_descriptor_array (int *,size_t*) ;
 TYPE_1__* nvpair_get_nvlist (int *) ;
 TYPE_1__** nvpair_get_nvlist_array (int *,size_t*) ;

size_t
nvlist_ndescriptors(const nvlist_t *nvl)
{

 void *cookie;
 nvpair_t *nvp;
 size_t ndescs;
 int type;

 NVLIST_ASSERT(nvl);
 PJDLOG_ASSERT(nvl->nvl_error == 0);

 ndescs = 0;
 cookie = ((void*)0);
 do {
  while (nvlist_next(nvl, &type, &cookie) != ((void*)0)) {
   nvp = cookie;
   switch (type) {
   case 131:
    ndescs++;
    break;
   case 129:
    nvl = nvpair_get_nvlist(nvp);
    cookie = ((void*)0);
    break;
   case 128:
       {
    const nvlist_t * const *value;
    size_t nitems;

    value = nvpair_get_nvlist_array(nvp, &nitems);
    PJDLOG_ASSERT(value != ((void*)0));
    PJDLOG_ASSERT(nitems > 0);

    nvl = value[0];
    cookie = ((void*)0);
    break;
       }
   case 130:
       {
    size_t nitems;

    (void)nvpair_get_descriptor_array(nvp,
        &nitems);
    ndescs += nitems;
    break;
       }
   }
  }
 } while ((nvl = nvlist_get_pararr(nvl, &cookie)) != ((void*)0));

 return (ndescs);



}
