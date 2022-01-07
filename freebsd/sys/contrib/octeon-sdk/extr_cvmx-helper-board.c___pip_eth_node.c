
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name_buffer ;


 int cvmx_dprintf (char*,...) ;
 int cvmx_helper_get_interface_index_num (int) ;
 int cvmx_helper_get_interface_num (int) ;
 char* fdt_getprop (void const*,int,char*,int *) ;
 int fdt_path_offset (void const*,char const*) ;
 int fdt_subnode_offset (void const*,int,char*) ;
 int snprintf (char*,int,char*,int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int __pip_eth_node(const void *fdt_addr, int aliases, int ipd_port)
{
    char name_buffer[20];
    const char*pip_path;
    int pip, iface, eth;
    int interface_num = cvmx_helper_get_interface_num(ipd_port);
    int interface_index = cvmx_helper_get_interface_index_num(ipd_port);

    pip_path = fdt_getprop(fdt_addr, aliases, "pip", ((void*)0));
    if (!pip_path)
    {
        cvmx_dprintf("ERROR: pip path not found in device tree\n");
        return -1;
    }
    pip = fdt_path_offset(fdt_addr, pip_path);
    if (pip < 0)
    {
        cvmx_dprintf("ERROR: pip not found in device tree\n");
        return -1;
    }



    snprintf(name_buffer, sizeof(name_buffer), "interface@%d", interface_num);

    iface = fdt_subnode_offset(fdt_addr, pip, name_buffer);
    if (iface < 0)
    {
        cvmx_dprintf("ERROR : pip intf %d not found in device tree \n",
                     interface_num);
        return -1;
    }



    snprintf(name_buffer, sizeof(name_buffer), "ethernet@%x", interface_index);

    eth = fdt_subnode_offset(fdt_addr, iface, name_buffer);
    if (eth < 0)
    {
        cvmx_dprintf("ERROR : pip interface@%d ethernet@%d not found in device "
                     "tree\n", interface_num, interface_index);
        return -1;
    }
    return eth;
}
