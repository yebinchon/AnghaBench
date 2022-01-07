
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CMD_OK ;
 int fdt_get_mem_rsv (int ,int,int *,int *) ;
 int fdt_num_mem_rsv (int ) ;
 int fdtp ;
 int pager_close () ;
 int pager_open () ;
 scalar_t__ pager_output (char*) ;
 int sprintf (char*,char*,int,int ,int ) ;

__attribute__((used)) static int
fdt_cmd_mres(int argc, char *argv[])
{
 uint64_t start, size;
 int i, total;
 char line[80];

 pager_open();
 total = fdt_num_mem_rsv(fdtp);
 if (total > 0) {
  if (pager_output("Reserved memory regions:\n"))
   goto out;
  for (i = 0; i < total; i++) {
   fdt_get_mem_rsv(fdtp, i, &start, &size);
   sprintf(line, "reg#%d: (start: 0x%jx, size: 0x%jx)\n",
       i, start, size);
   if (pager_output(line))
    goto out;
  }
 } else
  pager_output("No reserved memory regions\n");
out:
 pager_close();

 return (CMD_OK);
}
