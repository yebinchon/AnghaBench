#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct scfg {int /*<<< orphan*/  requests; } ;
struct TYPE_7__ {int* elm_stat; int result; int /*<<< orphan*/  elm_idx; } ;
typedef  TYPE_1__ safte_control_request_t ;
struct TYPE_8__ {int /*<<< orphan*/  periph; struct scfg* enc_private; } ;
typedef  TYPE_2__ enc_softc_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  PUSER ; 
 int /*<<< orphan*/  SAFTE_PROCESS_CONTROL_REQS ; 
 int /*<<< orphan*/  SES_SETSTATUS_ENC_IDX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 

__attribute__((used)) static int
FUNC3(enc_softc_t *enc, uint8_t encstat, int slpflag)
{
	struct scfg *cfg;
	safte_control_request_t req;

	cfg = enc->enc_private;
	if (cfg == NULL)
		return (ENXIO);

	req.elm_idx = SES_SETSTATUS_ENC_IDX;
	req.elm_stat[0] = encstat & 0xf;
	req.result = 0;
	
	FUNC0(&cfg->requests, &req, links);
	FUNC2(enc, SAFTE_PROCESS_CONTROL_REQS);
	FUNC1(enc->periph, &req, PUSER, "encstat", 0);

	return (req.result);
}