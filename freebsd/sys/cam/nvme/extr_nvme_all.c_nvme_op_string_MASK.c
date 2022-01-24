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
struct nvme_command {size_t opc; } ;

/* Variables and functions */
 size_t FUNC0 (char const**) ; 
 char const** nvme_opc2str ; 

const char *
FUNC1(const struct nvme_command *cmd, int admin)
{

	if (admin) {
		return "ADMIN";
	} else {
		if (cmd->opc >= FUNC0(nvme_opc2str))
			return "UNKNOWN";
		return nvme_opc2str[cmd->opc];
	}
}