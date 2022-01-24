#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct aac_softc {int /*<<< orphan*/  aac_io_lock; } ;
struct aac_fib {int /*<<< orphan*/ * data; } ;
struct TYPE_2__ {int* param; int /*<<< orphan*/  command; scalar_t__ data; } ;
struct aac_cnt_config {scalar_t__ Command; TYPE_1__ CTCommand; } ;
struct aac_cf_status_hdr {scalar_t__ action; } ;

/* Variables and functions */
 scalar_t__ CFACT_PAUSE ; 
 size_t CNT_SIZE ; 
 int /*<<< orphan*/  CT_COMMIT_CONFIG ; 
 int /*<<< orphan*/  CT_GET_CONFIG_STATUS ; 
 scalar_t__ CT_OK ; 
 scalar_t__ CT_PACKET_SIZE ; 
 int /*<<< orphan*/  ContainerCommand ; 
 scalar_t__ ST_OK ; 
 void* VM_ContainerConfig ; 
 int /*<<< orphan*/  FUNC0 (struct aac_softc*,struct aac_fib**) ; 
 int /*<<< orphan*/  FUNC1 (struct aac_softc*) ; 
 int FUNC2 (struct aac_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aac_fib*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aac_cnt_config*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct aac_softc *sc)
{
	struct aac_fib *fib;
	struct aac_cnt_config *ccfg;
	struct aac_cf_status_hdr *cf_shdr;
	int rval;

	FUNC4(&sc->aac_io_lock);
	FUNC0(sc, &fib);

	ccfg = (struct aac_cnt_config *)&fib->data[0];
	FUNC3(ccfg, sizeof (*ccfg) - CT_PACKET_SIZE);
	ccfg->Command = VM_ContainerConfig;
	ccfg->CTCommand.command = CT_GET_CONFIG_STATUS;
	ccfg->CTCommand.param[CNT_SIZE] = sizeof(struct aac_cf_status_hdr);

	rval = FUNC2(sc, ContainerCommand, 0, fib,
		sizeof (struct aac_cnt_config));
	cf_shdr = (struct aac_cf_status_hdr *)ccfg->CTCommand.data;
	if (rval == 0 && ccfg->Command == ST_OK &&
		ccfg->CTCommand.param[0] == CT_OK) {
		if (cf_shdr->action <= CFACT_PAUSE) {
			FUNC3(ccfg, sizeof (*ccfg) - CT_PACKET_SIZE);
			ccfg->Command = VM_ContainerConfig;
			ccfg->CTCommand.command = CT_COMMIT_CONFIG;

			rval = FUNC2(sc, ContainerCommand, 0, fib,
				sizeof (struct aac_cnt_config));
			if (rval == 0 && ccfg->Command == ST_OK &&
				ccfg->CTCommand.param[0] == CT_OK) {
				/* successful completion */
				rval = 0;
			} else {
				/* auto commit aborted due to error(s) */
				rval = -2;
			}
		} else {
			/* auto commit aborted due to adapter indicating
			   config. issues too dangerous to auto commit  */
			rval = -3;
		}
	} else {
		/* error */
		rval = -1;
	}

	FUNC1(sc);
	FUNC5(&sc->aac_io_lock);
	return(rval);
}