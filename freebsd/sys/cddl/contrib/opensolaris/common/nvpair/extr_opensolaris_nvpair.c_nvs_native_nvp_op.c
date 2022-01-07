
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int nvs_op; } ;
typedef TYPE_1__ nvstream_t ;
struct TYPE_17__ {scalar_t__ nvp_size; int nvp_name_sz; } ;
typedef TYPE_2__ nvpair_t ;
typedef int data_type_t ;





 int EFAULT ;
 int EINVAL ;
 int NVP_NELEM (TYPE_2__*) ;
 scalar_t__ NVP_SIZE_CALC (int ,int) ;
 int NVP_TYPE (TYPE_2__*) ;


 int i_get_value_size (int,int *,int ) ;
 scalar_t__ i_validate_nvpair_name (TYPE_2__*) ;
 int native_cp (TYPE_1__*,TYPE_2__*,scalar_t__) ;
 int nvpair_native_embedded (TYPE_1__*,TYPE_2__*) ;
 int nvpair_native_embedded_array (TYPE_1__*,TYPE_2__*) ;
 int nvpair_native_string_array (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int
nvs_native_nvp_op(nvstream_t *nvs, nvpair_t *nvp)
{
 data_type_t type;
 int value_sz;
 int ret = 0;






 switch (nvs->nvs_op) {
 case 128:
 case 129:
  if (native_cp(nvs, nvp, nvp->nvp_size) != 0)
   return (EFAULT);
  break;
 default:
  return (EINVAL);
 }


 if (i_validate_nvpair_name(nvp) != 0)
  return (EFAULT);

 type = NVP_TYPE(nvp);






 if ((value_sz = i_get_value_size(type, ((void*)0), NVP_NELEM(nvp))) < 0)
  return (EFAULT);

 if (NVP_SIZE_CALC(nvp->nvp_name_sz, value_sz) > nvp->nvp_size)
  return (EFAULT);

 switch (type) {
 case 132:
  ret = nvpair_native_embedded(nvs, nvp);
  break;
 case 131:
  ret = nvpair_native_embedded_array(nvs, nvp);
  break;
 case 130:
  nvpair_native_string_array(nvs, nvp);
  break;
 default:
  break;
 }

 return (ret);
}
