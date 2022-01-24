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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  cvmx_bootmem_named_block_desc_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int named_block_array_addr ; 
 int /*<<< orphan*/  named_block_name_len ; 
 int /*<<< orphan*/  named_block_num_blocks ; 
 int /*<<< orphan*/  size ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*,int) ; 

uint64_t FUNC8(const char *name, uint32_t flags)
{
    uint64_t result = 0;

#ifdef DEBUG
    cvmx_dprintf("cvmx_bootmem_phy_named_block_find: %s\n", name);
#endif
    FUNC4(flags);
    if (!FUNC3(3))
    {
        int i;
        uint64_t named_block_array_addr = FUNC0(named_block_array_addr);
        int num_blocks = FUNC0(named_block_num_blocks);
        int name_length = FUNC0(named_block_name_len);
        uint64_t named_addr = named_block_array_addr;
        for (i = 0; i < num_blocks; i++)
        {
            uint64_t named_size = FUNC1(named_addr, size);
            if (name && named_size)
            {
                char name_tmp[name_length];
                FUNC2(named_addr, name_tmp, name_length);
                if (!FUNC7(name, name_tmp, name_length - 1))
                {
                    result = named_addr;
                    break;
                }
            }
            else if (!name && !named_size)
            {
                result = named_addr;
                break;
            }
            named_addr += sizeof(cvmx_bootmem_named_block_desc_t);
        }
    }
    FUNC5(flags);
    return result;
}