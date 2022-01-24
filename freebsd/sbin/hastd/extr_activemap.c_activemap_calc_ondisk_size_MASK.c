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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 size_t FUNC3 (int,int) ; 

size_t
FUNC4(uint64_t mediasize, uint32_t extentsize,
    uint32_t sectorsize)
{
	uint64_t nextents, mapsize;

	FUNC0(mediasize > 0);
	FUNC0(extentsize > 0);
	FUNC0(FUNC2(extentsize));
	FUNC0(sectorsize > 0);
	FUNC0(FUNC2(sectorsize));

	nextents = ((mediasize - 1) / extentsize) + 1;
	mapsize = FUNC1(nextents);
	return (FUNC3(mapsize, sectorsize));
}