
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* FST_NAME_UNKNOWN ;

const char * fst_get_str_name(unsigned index, const char *names[],
         size_t names_size)
{
 if (index >= names_size || !names[index])
  return FST_NAME_UNKNOWN;
 return names[index];
}
