
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int is_json_file(const char *name)
{
 const char *suffix;

 if (strlen(name) < 5)
  return 0;

 suffix = name + strlen(name) - 5;

 if (strncmp(suffix, ".json", 5) == 0)
  return 1;
 return 0;
}
