
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t MOD_NAME_STR_UNKNOWN_VAL ;
 int * module_name_str ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int find_module_name(const char *name, uint8_t *file_id)
{
 uint8_t i;

 for (i = 0; i < MOD_NAME_STR_UNKNOWN_VAL; i++) {
  if (strcmp(name, module_name_str[i]) == 0) {
   if (file_id)
    *file_id = i;
   return 0;
  }
 }
 return 1;
}
