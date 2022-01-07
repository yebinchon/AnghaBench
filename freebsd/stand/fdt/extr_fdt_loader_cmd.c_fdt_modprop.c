
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct fdt_property {int dummy; } ;


 int CMD_ERROR ;
 int FDT_ERR_NOSPACE ;
 int command_errbuf ;
 struct fdt_property* fdt_get_property (int ,int,char*,int *) ;
 int fdt_setprop (int ,int,char*,int **,int) ;
 int fdt_setprop_string (int ,int,char*,void*) ;
 int fdt_strtovect (char const*,void*,int,int) ;
 int fdtp ;
 int sprintf (int ,char*) ;

__attribute__((used)) static int
fdt_modprop(int nodeoff, char *propname, void *value, char mode)
{
 uint32_t cells[100];
 const char *buf;
 int len, rv;
 const struct fdt_property *p;

 p = fdt_get_property(fdtp, nodeoff, propname, ((void*)0));

 if (p != ((void*)0)) {
  if (mode == 1) {

   sprintf(command_errbuf, "property already exists!");
   return (CMD_ERROR);
  }
 } else if (mode == 0) {
  sprintf(command_errbuf, "property does not exist!");
  return (CMD_ERROR);
 }
 rv = 0;
 buf = value;

 switch (*buf) {
 case '&':

  break;
 case '<':

  len = fdt_strtovect(buf, (void *)&cells, 100,
      sizeof(uint32_t));

  rv = fdt_setprop(fdtp, nodeoff, propname, &cells,
      len * sizeof(uint32_t));
  break;
 case '[':

  len = fdt_strtovect(buf, (void *)&cells, 100,
      sizeof(uint8_t));

  rv = fdt_setprop(fdtp, nodeoff, propname, &cells,
      len * sizeof(uint8_t));
  break;
 case '"':
 default:

  rv = fdt_setprop_string(fdtp, nodeoff, propname, value);
  break;
 }

 if (rv != 0) {
  if (rv == -FDT_ERR_NOSPACE)
   sprintf(command_errbuf,
       "Device tree blob is too small!\n");
  else
   sprintf(command_errbuf,
       "Could not add/modify property!\n");
 }
 return (rv);
}
