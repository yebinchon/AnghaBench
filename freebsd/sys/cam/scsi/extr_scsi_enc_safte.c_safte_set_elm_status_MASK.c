#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct scfg {int /*<<< orphan*/  requests; } ;
struct TYPE_9__ {int result; int /*<<< orphan*/  elm_stat; int /*<<< orphan*/  elm_idx; } ;
typedef  TYPE_1__ safte_control_request_t ;
struct TYPE_10__ {int* cstat; int /*<<< orphan*/  elm_idx; } ;
typedef  TYPE_2__ encioc_elm_status_t ;
struct TYPE_11__ {int /*<<< orphan*/  periph; struct scfg* enc_private; } ;
typedef  TYPE_3__ enc_softc_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  PUSER ; 
 int /*<<< orphan*/  SAFTE_PROCESS_CONTROL_REQS ; 
 int SESCTL_CSEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int) ; 

__attribute__((used)) static int
FUNC4(enc_softc_t *enc, encioc_elm_status_t *elms, int slpflag)
{
	struct scfg *cfg;
	safte_control_request_t req;

	cfg = enc->enc_private;
	if (cfg == NULL)
		return (ENXIO);

	/* If this is clear, we don't do diddly.  */
	if ((elms->cstat[0] & SESCTL_CSEL) == 0)
		return (0);

	req.elm_idx = elms->elm_idx;
	FUNC3(&req.elm_stat, elms->cstat, sizeof(req.elm_stat));
	req.result = 0;

	FUNC0(&cfg->requests, &req, links);
	FUNC2(enc, SAFTE_PROCESS_CONTROL_REQS);
	FUNC1(enc->periph, &req, PUSER, "encstat", 0);

	return (req.result);
}