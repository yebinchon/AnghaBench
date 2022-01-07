
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int nvp_size; } ;
typedef TYPE_1__ nvpair_t ;
typedef int data_type_t ;


 int EFAULT ;
 int NVP_NELEM (TYPE_1__*) ;
 int NVP_TYPE (TYPE_1__*) ;
 int NVP_VALOFF (TYPE_1__*) ;
 int NVP_VALUE (TYPE_1__*) ;
 int NV_ALIGN (int) ;
 int i_get_value_size (int ,int ,int ) ;
 scalar_t__ i_validate_nvpair_name (TYPE_1__*) ;
 scalar_t__ i_validate_nvpair_value (int ,int ,int ) ;

__attribute__((used)) static int
i_validate_nvpair(nvpair_t *nvp)
{
 data_type_t type = NVP_TYPE(nvp);
 int size1, size2;


 if (i_validate_nvpair_name(nvp) != 0)
  return (EFAULT);

 if (i_validate_nvpair_value(type, NVP_NELEM(nvp), NVP_VALUE(nvp)) != 0)
  return (EFAULT);





 size2 = i_get_value_size(type, NVP_VALUE(nvp), NVP_NELEM(nvp));
 size1 = nvp->nvp_size - NVP_VALOFF(nvp);
 if (size2 < 0 || size1 != NV_ALIGN(size2))
  return (EFAULT);

 return (0);
}
