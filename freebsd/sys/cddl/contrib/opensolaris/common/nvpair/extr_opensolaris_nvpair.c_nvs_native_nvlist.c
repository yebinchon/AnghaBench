
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int nvs_op; TYPE_2__* nvs_private; } ;
typedef TYPE_1__ nvstream_t ;
struct TYPE_8__ {int n_flag; } ;
typedef TYPE_2__ nvs_native_t ;
struct TYPE_9__ {int nvl_nvflag; int nvl_version; } ;
typedef TYPE_3__ nvlist_t ;
typedef int int32_t ;


 int EFAULT ;
 int EINVAL ;



 int native_cp (TYPE_1__*,int *,int) ;

__attribute__((used)) static int
nvs_native_nvlist(nvstream_t *nvs, nvlist_t *nvl, size_t *size)
{
 nvs_native_t *native = nvs->nvs_private;

 switch (nvs->nvs_op) {
 case 129:
 case 130:
  if (native->n_flag)
   return (0);

  native->n_flag = 1;


  if (native_cp(nvs, &nvl->nvl_version, sizeof (int32_t)) != 0 ||
      native_cp(nvs, &nvl->nvl_nvflag, sizeof (int32_t)) != 0)
   return (EFAULT);

  return (0);

 case 128:







  if (native->n_flag) {
   *size += 4;
  } else {
   native->n_flag = 1;
   *size += 2 * sizeof (int32_t) + 4;
  }

  return (0);

 default:
  return (EINVAL);
 }
}
