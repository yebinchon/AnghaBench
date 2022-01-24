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
struct ata_params {int dummy; } ;

/* Variables and functions */
 int ATA_DMA_MAX ; 
 int ATA_UDMA0 ; 
 int ATA_WDMA0 ; 
 scalar_t__ FUNC0 (struct ata_params*) ; 
 scalar_t__ FUNC1 (struct ata_params*) ; 
 scalar_t__ FUNC2 (struct ata_params*) ; 
 int FUNC3 (int,scalar_t__) ; 

int
FUNC4(struct ata_params *ap, int maxmode)
{

	if (maxmode == 0)
		maxmode = ATA_DMA_MAX;
	if (maxmode >= ATA_UDMA0 && FUNC1(ap) > 0)
		return (FUNC3(maxmode, FUNC1(ap)));
	if (maxmode >= ATA_WDMA0 && FUNC2(ap) > 0)
		return (FUNC3(maxmode, FUNC2(ap)));
	return (FUNC3(maxmode, FUNC0(ap)));
}