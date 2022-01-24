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

/* Variables and functions */
 int /*<<< orphan*/  GDB_OSABI_NETBSD_AOUT ; 
 int /*<<< orphan*/  GDB_OSABI_NETBSD_ELF ; 
 int /*<<< orphan*/  bfd_arch_sparc ; 
 int /*<<< orphan*/  bfd_arch_unknown ; 
 int /*<<< orphan*/  bfd_target_aout_flavour ; 
 int /*<<< orphan*/  bfd_target_unknown_flavour ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sparc32nbsd_aout_init_abi ; 
 int /*<<< orphan*/  sparc32nbsd_elf_init_abi ; 
 int /*<<< orphan*/  sparcnbsd_aout_osabi_sniffer ; 
 int /*<<< orphan*/  sparcnbsd_core_osabi_sniffer ; 

void
FUNC2 (void)
{
  FUNC1 (bfd_arch_sparc, bfd_target_aout_flavour,
				  sparcnbsd_aout_osabi_sniffer);

  /* BFD doesn't set the architecture for NetBSD style a.out core
     files.  */
  FUNC1 (bfd_arch_unknown, bfd_target_unknown_flavour,
                                  sparcnbsd_core_osabi_sniffer);

  FUNC0 (bfd_arch_sparc, 0, GDB_OSABI_NETBSD_AOUT,
			  sparc32nbsd_aout_init_abi);
  FUNC0 (bfd_arch_sparc, 0, GDB_OSABI_NETBSD_ELF,
			  sparc32nbsd_elf_init_abi);
}