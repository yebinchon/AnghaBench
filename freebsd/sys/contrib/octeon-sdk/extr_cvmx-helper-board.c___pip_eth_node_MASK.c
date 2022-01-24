#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  name_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 char* FUNC3 (void const*,int,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (void const*,char const*) ; 
 int FUNC5 (void const*,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 

__attribute__((used)) static int FUNC8(const void *fdt_addr, int aliases, int ipd_port)
{
    char name_buffer[20];
    const char*pip_path;
    int pip, iface, eth;
    int interface_num    = FUNC2(ipd_port);
    int interface_index  = FUNC1(ipd_port);

    pip_path = FUNC3(fdt_addr, aliases, "pip", NULL);
    if (!pip_path)
    {
        FUNC0("ERROR: pip path not found in device tree\n");
        return -1;
    }
    pip = FUNC4(fdt_addr, pip_path);
    if (pip < 0)
    {
        FUNC0("ERROR: pip not found in device tree\n");
        return -1;
    }
#ifdef __U_BOOT__
    sprintf(name_buffer, "interface@%d", interface_num);
#else
    FUNC6(name_buffer, sizeof(name_buffer), "interface@%d", interface_num);
#endif
    iface =  FUNC5(fdt_addr, pip, name_buffer);
    if (iface < 0)
    {
        FUNC0("ERROR : pip intf %d not found in device tree \n",
                     interface_num);
        return -1;
    }
#ifdef __U_BOOT__
    sprintf(name_buffer, "ethernet@%x", interface_index);
#else
    FUNC6(name_buffer, sizeof(name_buffer), "ethernet@%x", interface_index);
#endif
    eth = FUNC5(fdt_addr, iface, name_buffer);
    if (eth < 0)
    {
        FUNC0("ERROR : pip interface@%d ethernet@%d not found in device "
                     "tree\n", interface_num, interface_index);
        return -1;
    }
    return eth;
}