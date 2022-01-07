
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int fdt_path_offset (int ,char*) ;
 int fdt_setprop (int ,int ,char*,int **,int) ;
 int fdt_strtovectx (char const*,int **,int,int) ;
 int fdtp ;

void
fdt_fixup_ethernet(const char *str, char *ethstr, int len)
{
 uint8_t tmp_addr[6];


 fdt_strtovectx(str, &tmp_addr, 6, sizeof(uint8_t));

 fdt_setprop(fdtp, fdt_path_offset(fdtp, ethstr),
     "local-mac-address", &tmp_addr, 6 * sizeof(uint8_t));
}
