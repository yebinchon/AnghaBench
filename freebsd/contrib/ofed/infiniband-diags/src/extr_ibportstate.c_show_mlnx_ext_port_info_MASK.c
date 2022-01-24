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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  ib_portid_t ;

/* Variables and functions */
 int /*<<< orphan*/  IB_SMP_DATA_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,char*) ; 

__attribute__((used)) static void FUNC3(ib_portid_t * dest, uint8_t * data, int portnum)
{
	char buf[256];

	FUNC0(buf, sizeof buf, data, IB_SMP_DATA_SIZE);

	FUNC2("# MLNX ext Port info: %s port %d\n%s", FUNC1(dest),
	       portnum, buf);
}