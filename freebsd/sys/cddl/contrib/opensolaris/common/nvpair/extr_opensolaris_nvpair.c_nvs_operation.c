
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int nvs_op; TYPE_1__* nvs_ops; } ;
typedef TYPE_2__ nvstream_t ;
struct TYPE_16__ {scalar_t__ nvl_priv; } ;
typedef TYPE_3__ nvlist_t ;
struct TYPE_14__ {int (* nvs_nvlist ) (TYPE_2__*,TYPE_3__*,size_t*) ;} ;


 int EFAULT ;
 int EINVAL ;



 int nvs_decode_pairs (TYPE_2__*,TYPE_3__*) ;
 int nvs_encode_pairs (TYPE_2__*,TYPE_3__*) ;
 int nvs_getsize_pairs (TYPE_2__*,TYPE_3__*,size_t*) ;
 int stub1 (TYPE_2__*,TYPE_3__*,size_t*) ;

__attribute__((used)) static int
nvs_operation(nvstream_t *nvs, nvlist_t *nvl, size_t *buflen)
{
 int err;

 if (nvl->nvl_priv == 0)
  return (EFAULT);




 if ((err = nvs->nvs_ops->nvs_nvlist(nvs, nvl, buflen)) != 0)
  return (err);

 switch (nvs->nvs_op) {
 case 129:
  err = nvs_encode_pairs(nvs, nvl);
  break;

 case 130:
  err = nvs_decode_pairs(nvs, nvl);
  break;

 case 128:
  err = nvs_getsize_pairs(nvs, nvl, buflen);
  break;

 default:
  err = EINVAL;
 }

 return (err);
}
