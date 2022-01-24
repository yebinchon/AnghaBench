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
struct config_file {int* outgoing_avail_ports; } ;

/* Variables and functions */
 int FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,size_t,int) ; 

int FUNC3(struct config_file* cfg, int** avail)
{
	int num = FUNC0(cfg->outgoing_avail_ports, 65536);
	int i, at = 0;
	*avail = NULL;
	if(num == 0)
		return 0;
	*avail = (int*)FUNC2(NULL, (size_t)num, sizeof(int));
	if(!*avail)
		return 0;
	for(i=0; i<65536; i++) {
		if(cfg->outgoing_avail_ports[i])
			(*avail)[at++] = cfg->outgoing_avail_ports[i];
	}
	FUNC1(at == num);
	return num;
}