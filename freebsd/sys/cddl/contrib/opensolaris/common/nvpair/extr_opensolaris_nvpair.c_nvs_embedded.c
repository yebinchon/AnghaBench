
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int nvs_op; int nvs_recursion; int nvs_priv; } ;
typedef TYPE_1__ nvstream_t ;
typedef int nvpriv_t ;
struct TYPE_10__ {int nvl_nvflag; int nvl_version; } ;
typedef TYPE_2__ nvlist_t ;


 int EINVAL ;
 int ENOMEM ;
 int ENOTSUP ;


 int NV_VERSION ;
 int * nv_priv_alloc_embedded (int ) ;
 int nvlist_free (TYPE_2__*) ;
 int nvlist_init (TYPE_2__*,int ,int *) ;
 int nvpair_max_recursion ;
 int nvs_operation (TYPE_1__*,TYPE_2__*,int *) ;

__attribute__((used)) static int
nvs_embedded(nvstream_t *nvs, nvlist_t *embedded)
{
 switch (nvs->nvs_op) {
 case 128: {
  int err;

  if (nvs->nvs_recursion >= nvpair_max_recursion)
   return (EINVAL);
  nvs->nvs_recursion++;
  err = nvs_operation(nvs, embedded, ((void*)0));
  nvs->nvs_recursion--;
  return (err);
 }
 case 129: {
  nvpriv_t *priv;
  int err;

  if (embedded->nvl_version != NV_VERSION)
   return (ENOTSUP);

  if ((priv = nv_priv_alloc_embedded(nvs->nvs_priv)) == ((void*)0))
   return (ENOMEM);

  nvlist_init(embedded, embedded->nvl_nvflag, priv);

  if (nvs->nvs_recursion >= nvpair_max_recursion) {
   nvlist_free(embedded);
   return (EINVAL);
  }
  nvs->nvs_recursion++;
  if ((err = nvs_operation(nvs, embedded, ((void*)0))) != 0)
   nvlist_free(embedded);
  nvs->nvs_recursion--;
  return (err);
 }
 default:
  break;
 }

 return (EINVAL);
}
