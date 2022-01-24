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
typedef  int uint32_t ;

/* Variables and functions */
 int AW_MMC_INT_CMD_BUSY ; 
 int AW_MMC_INT_DATA_CRC_ERR ; 
 int AW_MMC_INT_DATA_END_BIT_ERR ; 
 int AW_MMC_INT_DATA_START_ERR ; 
 int AW_MMC_INT_FIFO_RUN_ERR ; 
 int AW_MMC_INT_RESP_CRC_ERR ; 
 int AW_MMC_INT_RESP_ERR ; 
 int AW_MMC_INT_RESP_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void
FUNC1(uint32_t err)
{
	if(err & AW_MMC_INT_RESP_ERR)
		FUNC0("AW_MMC_INT_RESP_ERR ");
	if (err & AW_MMC_INT_RESP_CRC_ERR)
		FUNC0("AW_MMC_INT_RESP_CRC_ERR ");
	if (err & AW_MMC_INT_DATA_CRC_ERR)
		FUNC0("AW_MMC_INT_DATA_CRC_ERR ");
	if (err & AW_MMC_INT_RESP_TIMEOUT)
		FUNC0("AW_MMC_INT_RESP_TIMEOUT ");
	if (err & AW_MMC_INT_FIFO_RUN_ERR)
		FUNC0("AW_MMC_INT_FIFO_RUN_ERR ");
	if (err & AW_MMC_INT_CMD_BUSY)
		FUNC0("AW_MMC_INT_CMD_BUSY ");
	if (err & AW_MMC_INT_DATA_START_ERR)
		FUNC0("AW_MMC_INT_DATA_START_ERR ");
	if (err & AW_MMC_INT_DATA_END_BIT_ERR)
		FUNC0("AW_MMC_INT_DATA_END_BIT_ERR");
	FUNC0("\n");
}