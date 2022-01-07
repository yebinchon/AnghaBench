
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;


 int NVPAIR_ASSERT (int const*) ;
 int PJDLOG_ABORT (char*,int) ;
 int * nvpair_create_binary (char const*,void const*,size_t) ;
 int * nvpair_create_bool (char const*,int ) ;
 int * nvpair_create_bool_array (char const*,void const*,size_t) ;
 int * nvpair_create_descriptor (char const*,int ) ;
 int * nvpair_create_descriptor_array (char const*,void const*,size_t) ;
 int * nvpair_create_null (char const*) ;
 int * nvpair_create_number (char const*,int ) ;
 int * nvpair_create_number_array (char const*,void const*,size_t) ;
 int * nvpair_create_nvlist (char const*,int ) ;
 int * nvpair_create_nvlist_array (char const*,void const*,size_t) ;
 int * nvpair_create_string (char const*,int ) ;
 int * nvpair_create_string_array (char const*,void const*,size_t) ;
 void* nvpair_get_binary (int const*,size_t*) ;
 int nvpair_get_bool (int const*) ;
 void* nvpair_get_bool_array (int const*,size_t*) ;
 int nvpair_get_descriptor (int const*) ;
 void* nvpair_get_descriptor_array (int const*,size_t*) ;
 int nvpair_get_number (int const*) ;
 void* nvpair_get_number_array (int const*,size_t*) ;
 int nvpair_get_nvlist (int const*) ;
 void* nvpair_get_nvlist_array (int const*,size_t*) ;
 int nvpair_get_string (int const*) ;
 void* nvpair_get_string_array (int const*,size_t*) ;
 char* nvpair_name (int const*) ;
 int nvpair_type (int const*) ;

nvpair_t *
nvpair_clone(const nvpair_t *nvp)
{
 nvpair_t *newnvp;
 const char *name;
 const void *data;
 size_t datasize;

 NVPAIR_ASSERT(nvp);

 name = nvpair_name(nvp);

 switch (nvpair_type(nvp)) {
 case 134:
  newnvp = nvpair_create_null(name);
  break;
 case 138:
  newnvp = nvpair_create_bool(name, nvpair_get_bool(nvp));
  break;
 case 133:
  newnvp = nvpair_create_number(name, nvpair_get_number(nvp));
  break;
 case 129:
  newnvp = nvpair_create_string(name, nvpair_get_string(nvp));
  break;
 case 131:
  newnvp = nvpair_create_nvlist(name, nvpair_get_nvlist(nvp));
  break;
 case 139:
  data = nvpair_get_binary(nvp, &datasize);
  newnvp = nvpair_create_binary(name, data, datasize);
  break;
 case 137:
  data = nvpair_get_bool_array(nvp, &datasize);
  newnvp = nvpair_create_bool_array(name, data, datasize);
  break;
 case 132:
  data = nvpair_get_number_array(nvp, &datasize);
  newnvp = nvpair_create_number_array(name, data, datasize);
  break;
 case 128:
  data = nvpair_get_string_array(nvp, &datasize);
  newnvp = nvpair_create_string_array(name, data, datasize);
  break;
 case 130:
  data = nvpair_get_nvlist_array(nvp, &datasize);
  newnvp = nvpair_create_nvlist_array(name, data, datasize);
  break;

 case 136:
  newnvp = nvpair_create_descriptor(name,
      nvpair_get_descriptor(nvp));
  break;
 case 135:
  data = nvpair_get_descriptor_array(nvp, &datasize);
  newnvp = nvpair_create_descriptor_array(name, data, datasize);
  break;

 default:
  PJDLOG_ABORT("Unknown type: %d.", nvpair_type(nvp));
 }

 return (newnvp);
}
