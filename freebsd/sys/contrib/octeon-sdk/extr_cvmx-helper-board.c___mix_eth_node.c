
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name_buffer ;


 int cvmx_dprintf (char*,...) ;
 char* fdt_getprop (void const*,int,char*,int *) ;
 int fdt_path_offset (void const*,char const*) ;
 int snprintf (char*,int,char*,int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int __mix_eth_node(const void *fdt_addr, int aliases, int interface_index)
{
    char name_buffer[20];
    const char*mix_path;
    int mix;




    snprintf(name_buffer, sizeof(name_buffer), "mix%d", interface_index);

    mix_path = fdt_getprop(fdt_addr, aliases, name_buffer, ((void*)0));
    if (!mix_path)
    {
        cvmx_dprintf("ERROR: mix%d path not found in device tree\n",interface_index);
    }
    mix = fdt_path_offset(fdt_addr, mix_path);
    if (mix < 0)
    {
        cvmx_dprintf("ERROR: %s not found in device tree\n", mix_path);
        return -1;
    }
    return mix;
}
