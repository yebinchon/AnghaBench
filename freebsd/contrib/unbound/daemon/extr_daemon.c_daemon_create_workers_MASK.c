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
typedef  int /*<<< orphan*/  uint32_t ;
struct worker {int dummy; } ;
struct daemon {int num; struct worker** workers; TYPE_1__* cfg; int /*<<< orphan*/  dtenv; scalar_t__ num_ports; scalar_t__ reuseport; int /*<<< orphan*/  rand; } ;
struct TYPE_2__ {int num_threads; int /*<<< orphan*/  dnstap_socket_path; scalar_t__ dnstap; } ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 scalar_t__ FUNC0 (size_t,int) ; 
 int FUNC1 (struct daemon*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int) ; 
 struct worker* FUNC14 (struct daemon*,int,int*,int) ; 

__attribute__((used)) static void 
FUNC15(struct daemon* daemon)
{
	int i, numport;
	int* shufport;
	FUNC8(daemon && daemon->cfg);
	if(!daemon->rand) {
		unsigned int seed = (unsigned int)FUNC10(NULL) ^ 
			(unsigned int)FUNC6() ^ 0x438;
		daemon->rand = FUNC11(seed, NULL);
		if(!daemon->rand)
			FUNC4("could not init random generator");
		FUNC7((uint32_t)FUNC12(daemon->rand));
	}
	shufport = (int*)FUNC0(65536, sizeof(int));
	if(!shufport)
		FUNC4("out of memory during daemon init");
	numport = FUNC1(daemon, shufport);
	FUNC13(VERB_ALGO, "total of %d outgoing ports available", numport);
	
	daemon->num = (daemon->cfg->num_threads?daemon->cfg->num_threads:1);
	if(daemon->reuseport && (int)daemon->num < (int)daemon->num_ports) {
		FUNC9("cannot reduce num-threads to %d because so-reuseport "
			"so continuing with %d threads.", (int)daemon->num,
			(int)daemon->num_ports);
		daemon->num = (int)daemon->num_ports;
	}
	daemon->workers = (struct worker**)FUNC0((size_t)daemon->num, 
		sizeof(struct worker*));
	if(!daemon->workers)
		FUNC4("out of memory during daemon init");
	if(daemon->cfg->dnstap) {
#ifdef USE_DNSTAP
		daemon->dtenv = dt_create(daemon->cfg->dnstap_socket_path,
			(unsigned int)daemon->num);
		if (!daemon->dtenv)
			fatal_exit("dt_create failed");
		dt_apply_cfg(daemon->dtenv, daemon->cfg);
#else
		FUNC4("dnstap enabled in config but not built with dnstap support");
#endif
	}
	for(i=0; i<daemon->num; i++) {
		if(!(daemon->workers[i] = FUNC14(daemon, i,
			shufport+numport*i/daemon->num, 
			numport*(i+1)/daemon->num - numport*i/daemon->num)))
			/* the above is not ports/numthr, due to rounding */
			FUNC4("could not create worker");
	}
	FUNC5(shufport);
}