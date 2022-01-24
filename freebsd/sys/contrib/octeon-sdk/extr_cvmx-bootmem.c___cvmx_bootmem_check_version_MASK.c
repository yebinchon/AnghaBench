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
typedef  int /*<<< orphan*/  ULL ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ cvmx_bootmem_desc_addr ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int minor_version ; 

__attribute__((used)) static int FUNC3(int exact_match)
{
    int major_version;
#ifdef CVMX_BUILD_FOR_LINUX_HOST
    if (!cvmx_bootmem_desc_addr)
        cvmx_bootmem_desc_addr = cvmx_read64_uint64(0x48100);
#endif
    major_version = FUNC0(major_version);
    if ((major_version > 3) || (exact_match && major_version != exact_match))
    {
        FUNC1("ERROR: Incompatible bootmem descriptor version: %d.%d at addr: 0x%llx\n",
            major_version, (int)FUNC0(minor_version),
            (ULL)cvmx_bootmem_desc_addr);
        return -1;
    }
    else
        return 0;
}