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
struct gdbarch {int dummy; } ;
struct bfd_arch_info {scalar_t__ arch; scalar_t__ mach; } ;

/* Variables and functions */
 scalar_t__ bfd_arch_powerpc ; 
 scalar_t__ bfd_arch_rs6000 ; 
 scalar_t__ bfd_mach_ppc_e500 ; 
 struct bfd_arch_info* FUNC0 (struct gdbarch*) ; 

int
FUNC1 (struct gdbarch *gdbarch)
{
  const struct bfd_arch_info *info = FUNC0 (gdbarch);
  if (info->arch == bfd_arch_powerpc)
    return (info->mach != bfd_mach_ppc_e500);
  if (info->arch == bfd_arch_rs6000)
    return 1;
  return 0;
}