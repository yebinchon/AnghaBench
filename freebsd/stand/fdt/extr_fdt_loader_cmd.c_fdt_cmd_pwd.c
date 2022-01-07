
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_OK ;
 int FDT_CWD_LEN ;
 char* cwd ;
 int pager_close () ;
 int pager_open () ;
 int pager_output (char*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static int
fdt_cmd_pwd(int argc, char *argv[])
{
 char line[FDT_CWD_LEN];

 pager_open();
 sprintf(line, "%s\n", cwd);
 pager_output(line);
 pager_close();
 return (CMD_OK);
}
