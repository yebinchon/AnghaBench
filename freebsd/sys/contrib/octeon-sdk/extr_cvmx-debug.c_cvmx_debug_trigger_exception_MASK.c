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
 int /*<<< orphan*/  CVMX_CIU_DINT ; 
 int /*<<< orphan*/  CVMX_MIO_BOOT_BIST_STAT ; 
 unsigned int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 

void FUNC3(void)
{
  /* Set CVMX_CIU_DINT to enter debug exception handler.  */
  FUNC2 (CVMX_CIU_DINT, 1u << FUNC0 ());
  /* Perform an immediate read after every write to an RSL register to force
     the write to complete. It doesn't matter what RSL read we do, so we
     choose CVMX_MIO_BOOT_BIST_STAT because it is fast and harmless */
  FUNC1 (CVMX_MIO_BOOT_BIST_STAT);
}