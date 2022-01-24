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
 char* FUNC1 (void const*,int,char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (void const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static int FUNC5(const void *fdt_addr, int aliases, int interface_index)
{
    char name_buffer[20];
    const char*mix_path;
    int mix;

#ifdef __U_BOOT__
    sprintf(name_buffer, "mix%d", interface_index);
#else
    FUNC3(name_buffer, sizeof(name_buffer), "mix%d", interface_index);
#endif
    mix_path = FUNC1(fdt_addr, aliases, name_buffer, NULL);
    if (!mix_path)
    {
        FUNC0("ERROR: mix%d path not found in device tree\n",interface_index);
    }
    mix = FUNC2(fdt_addr, mix_path);
    if (mix < 0)
    {
        FUNC0("ERROR: %s not found in device tree\n", mix_path);
        return -1;
    }
    return mix;
}