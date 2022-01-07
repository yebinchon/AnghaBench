
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_ERROR ;
 int CMD_OK ;
 int FDT_ERR_NOSPACE ;
 int command_errbuf ;
 int fdt_add_subnode (int ,int,char*) ;
 scalar_t__ fdt_extract_nameloc (char**,char**,int*) ;
 int fdtp ;
 int sprintf (int ,char*) ;

__attribute__((used)) static int
fdt_cmd_mknode(int argc, char *argv[])
{
 int o, rv;
 char *path = ((void*)0), *nodename = ((void*)0);

 if (argc > 2)
  path = argv[2];
 else {
  sprintf(command_errbuf, "no node name specified");
  return (CMD_ERROR);
 }

 if (fdt_extract_nameloc(&path, &nodename, &o) != 0)
  return (CMD_ERROR);

 rv = fdt_add_subnode(fdtp, o, nodename);

 if (rv < 0) {
  if (rv == -FDT_ERR_NOSPACE)
   sprintf(command_errbuf,
       "Device tree blob is too small!\n");
  else
   sprintf(command_errbuf,
       "Could not add node!\n");
  return (CMD_ERROR);
 }
 return (CMD_OK);
}
