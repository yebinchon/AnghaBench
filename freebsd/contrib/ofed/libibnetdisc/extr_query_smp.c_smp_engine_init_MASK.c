#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ umad_fd; int /*<<< orphan*/ * cfg; int /*<<< orphan*/  smps_on_wire; void* user_data; void* smi_dir_agent; void* smi_agent; } ;
typedef  TYPE_1__ smp_engine_t ;
typedef  int /*<<< orphan*/  ibnd_config_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  IB_SMI_CLASS ; 
 int /*<<< orphan*/  IB_SMI_DIRECT_CLASS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (char*,int) ; 
 void* FUNC6 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(smp_engine_t * engine, char * ca_name, int ca_port,
		    void *user_data, ibnd_config_t *cfg)
{
	FUNC2(engine, 0, sizeof(*engine));

	if (FUNC4() < 0) {
		FUNC0("umad_init failed\n");
		return -EIO;
	}

	engine->umad_fd = FUNC5(ca_name, ca_port);
	if (engine->umad_fd < 0) {
		FUNC0("can't open UMAD port (%s:%d)\n", ca_name, ca_port);
		return -EIO;
	}

	if ((engine->smi_agent = FUNC6(engine->umad_fd,
	     IB_SMI_CLASS, 1, 0, 0)) < 0) {
		FUNC0("Failed to register SMI agent on (%s:%d)\n",
			   ca_name, ca_port);
		goto eio_close;
	}

	if ((engine->smi_dir_agent = FUNC6(engine->umad_fd,
	     IB_SMI_DIRECT_CLASS, 1, 0, 0)) < 0) {
		FUNC0("Failed to register SMI_DIRECT agent on (%s:%d)\n",
			   ca_name, ca_port);
		goto eio_close;
	}

	engine->user_data = user_data;
	FUNC1(&engine->smps_on_wire);
	engine->cfg = cfg;
	return (0);

eio_close:
	FUNC3(engine->umad_fd);
	return (-EIO);
}