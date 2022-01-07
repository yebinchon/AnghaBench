
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_ERROR ;
 int CMD_OK ;
 scalar_t__ fdt_extract_nameloc (char**,char**,int*) ;
 scalar_t__ fdt_merge_strings (int,char**,int,char**) ;
 scalar_t__ fdt_modprop (int,char*,char*,int) ;

__attribute__((used)) static int
fdt_cmd_mkprop(int argc, char *argv[])
{
 int o;
 char *path, *propname, *value;

 path = (argc > 2) ? argv[2] : ((void*)0);

 value = ((void*)0);

 if (argc > 3) {

  if (fdt_merge_strings(argc, argv, 3, &value) != 0)
   return (CMD_ERROR);
 } else
  value = ((void*)0);

 if (fdt_extract_nameloc(&path, &propname, &o) != 0)
  return (CMD_ERROR);

 if (fdt_modprop(o, propname, value, 1))
  return (CMD_ERROR);

 return (CMD_OK);
}
