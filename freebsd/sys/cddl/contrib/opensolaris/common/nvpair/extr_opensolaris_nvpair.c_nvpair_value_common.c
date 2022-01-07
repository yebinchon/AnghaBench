
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int nvpair_t ;
typedef int data_type_t ;
 int EINVAL ;
 int ENOTSUP ;
 int NVP_NELEM (int *) ;
 scalar_t__ NVP_VALUE (int *) ;
 int bcopy (scalar_t__,void*,size_t) ;
 int i_get_value_size (int,int *,int) ;
 int nvpair_type (int *) ;

__attribute__((used)) static int
nvpair_value_common(nvpair_t *nvp, data_type_t type, uint_t *nelem, void *data)
{
 if (nvp == ((void*)0) || nvpair_type(nvp) != type)
  return (EINVAL);





 switch (type) {
 case 154:
  if (nelem != ((void*)0))
   *nelem = 0;
  break;

 case 152:
 case 151:
 case 141:
 case 129:
 case 147:
 case 135:
 case 145:
 case 133:
 case 143:
 case 131:
 case 148:

 case 149:

  if (data == ((void*)0))
   return (EINVAL);
  bcopy(NVP_VALUE(nvp), data,
      (size_t)i_get_value_size(type, ((void*)0), 1));
  if (nelem != ((void*)0))
   *nelem = 1;
  break;

 case 139:
 case 137:
  if (data == ((void*)0))
   return (EINVAL);
  *(void **)data = (void *)NVP_VALUE(nvp);
  if (nelem != ((void*)0))
   *nelem = 1;
  break;

 case 153:
 case 150:
 case 140:
 case 128:
 case 146:
 case 134:
 case 144:
 case 132:
 case 142:
 case 130:
 case 136:
 case 138:
  if (nelem == ((void*)0) || data == ((void*)0))
   return (EINVAL);
  if ((*nelem = NVP_NELEM(nvp)) != 0)
   *(void **)data = (void *)NVP_VALUE(nvp);
  else
   *(void **)data = ((void*)0);
  break;

 default:
  return (ENOTSUP);
 }

 return (0);
}
