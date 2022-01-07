
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (char const**) ;
 int get_cmd_arg_num (char const*,int) ;
 char** os_calloc (int,int) ;
 char* os_strdup (char const*) ;

__attribute__((used)) static char ** hostapd_complete_get(const char *str, int pos)
{
 int arg = get_cmd_arg_num(str, pos);
 const char *fields[] = {
  "version", "tls_library",
 };
 int i, num_fields = ARRAY_SIZE(fields);

 if (arg == 1) {
  char **res;

  res = os_calloc(num_fields + 1, sizeof(char *));
  if (!res)
   return ((void*)0);
  for (i = 0; i < num_fields; i++) {
   res[i] = os_strdup(fields[i]);
   if (!res[i])
    return res;
  }
  return res;
 }
 return ((void*)0);
}
