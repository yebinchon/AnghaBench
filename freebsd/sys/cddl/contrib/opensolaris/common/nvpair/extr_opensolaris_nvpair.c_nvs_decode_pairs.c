
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* nvs_ops; } ;
typedef TYPE_2__ nvstream_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
struct TYPE_6__ {int (* nvs_nvpair ) (TYPE_2__*,int *,size_t*) ;int (* nvs_nvp_op ) (TYPE_2__*,int *) ;} ;


 int EFAULT ;
 int ENOMEM ;
 size_t NVP_SIZE_CALC (int,int ) ;
 scalar_t__ i_validate_nvpair (int *) ;
 int * nvp_buf_alloc (int *,size_t) ;
 int nvp_buf_free (int *,int *) ;
 int nvp_buf_link (int *,int *) ;
 int nvpair_free (int *) ;
 int nvt_add_nvpair (int *,int *) ;
 int stub1 (TYPE_2__*,int *,size_t*) ;
 int stub2 (TYPE_2__*,int *) ;

__attribute__((used)) static int
nvs_decode_pairs(nvstream_t *nvs, nvlist_t *nvl)
{
 nvpair_t *nvp;
 size_t nvsize;
 int err;





 while ((err = nvs->nvs_ops->nvs_nvpair(nvs, ((void*)0), &nvsize)) == 0) {
  if (nvsize == 0)
   break;


  if (nvsize < NVP_SIZE_CALC(1, 0))
   return (EFAULT);

  if ((nvp = nvp_buf_alloc(nvl, nvsize)) == ((void*)0))
   return (ENOMEM);

  if ((err = nvs->nvs_ops->nvs_nvp_op(nvs, nvp)) != 0) {
   nvp_buf_free(nvl, nvp);
   return (err);
  }

  if (i_validate_nvpair(nvp) != 0) {
   nvpair_free(nvp);
   nvp_buf_free(nvl, nvp);
   return (EFAULT);
  }

  err = nvt_add_nvpair(nvl, nvp);
  if (err != 0) {
   nvpair_free(nvp);
   nvp_buf_free(nvl, nvp);
   return (err);
  }
  nvp_buf_link(nvl, nvp);
 }
 return (err);
}
