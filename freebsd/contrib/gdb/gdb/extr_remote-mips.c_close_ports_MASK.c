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
 int /*<<< orphan*/  mips_desc ; 
 scalar_t__ mips_is_open ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ tftp_in_use ; 
 int /*<<< orphan*/  udp_desc ; 
 scalar_t__ udp_in_use ; 

__attribute__((used)) static void
FUNC1 (void)
{
  mips_is_open = 0;
  FUNC0 (mips_desc);

  if (udp_in_use)
    {
      FUNC0 (udp_desc);
      udp_in_use = 0;
    }
  tftp_in_use = 0;
}