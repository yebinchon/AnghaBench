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
struct sscfu {size_t state; int /*<<< orphan*/  aarg; } ;
struct SSCFU_MBUF_T {int dummy; } ;
typedef  enum saal_sig { ____Placeholder_saal_sig } saal_sig ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sscfu*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct SSCFU_MBUF_T*) ; 
#define  SAAL_DATA_indication 142 
#define  SAAL_DATA_request 141 
#define  SAAL_ESTABLISH_confirm 140 
#define  SAAL_ESTABLISH_indication 139 
#define  SAAL_ESTABLISH_request 138 
#define  SAAL_RELEASE_confirm 137 
#define  SAAL_RELEASE_indication 136 
#define  SAAL_RELEASE_request 135 
#define  SAAL_UDATA_indication 134 
#define  SAAL_UDATA_request 133 
#define  SSCFU_AWAITING_ESTABLISH 132 
#define  SSCFU_AWAITING_RELEASE 131 
 int /*<<< orphan*/  SSCFU_DBG_ERR ; 
 int /*<<< orphan*/  SSCFU_DBG_EXEC ; 
#define  SSCFU_ESTABLISHED 130 
#define  SSCFU_RELEASED 129 
#define  SSCFU_RESYNC 128 
 int /*<<< orphan*/  FUNC3 (struct sscfu*,int /*<<< orphan*/ ,struct SSCFU_MBUF_T*,int) ; 
 int /*<<< orphan*/  SSCOP_DATA_request ; 
 int /*<<< orphan*/  SSCOP_ESTABLISH_request ; 
 int /*<<< orphan*/  SSCOP_RELEASE_request ; 
 int /*<<< orphan*/  SSCOP_RESYNC_request ; 
 int /*<<< orphan*/  SSCOP_UDATA_request ; 
 int /*<<< orphan*/  FUNC4 (struct sscfu*,int /*<<< orphan*/ ,struct sscfu*) ; 
 int /*<<< orphan*/  FUNC5 (struct sscfu*,int const) ; 
 int /*<<< orphan*/ * sscf_sigs ; 
 int /*<<< orphan*/ * sscf_states ; 

__attribute__((used)) static void
FUNC6(struct sscfu *sscf, enum saal_sig sig, struct SSCFU_MBUF_T *m)
{
	FUNC4(sscf, SSCFU_DBG_EXEC, (sscf, sscf->aarg,
	    "executing signal %s(%s)",
	    sscf_sigs[sig], sscf_states[sscf->state]));

	switch (sig) {

	  case SAAL_ESTABLISH_request:
		/* arg is opt UU */
		switch (sscf->state) {

		  case SSCFU_RELEASED:
			FUNC5(sscf, SSCFU_AWAITING_ESTABLISH);
			FUNC3(sscf, SSCOP_ESTABLISH_request, m, 1);
			break;

		  case SSCFU_AWAITING_ESTABLISH:
			if (m)
				FUNC2(m);
			goto badsig;

		  case SSCFU_AWAITING_RELEASE:
			FUNC5(sscf, SSCFU_AWAITING_ESTABLISH);
			FUNC3(sscf, SSCOP_ESTABLISH_request, m, 1);
			break;

		  case SSCFU_ESTABLISHED:
			FUNC5(sscf, SSCFU_RESYNC);
			FUNC3(sscf, SSCOP_RESYNC_request, m, 0);
			break;

		  case SSCFU_RESYNC:
			if (m)
				FUNC2(m);
			goto badsig;
		}
		break;

	  case SAAL_RELEASE_request:
		/* arg is opt UU */
		switch(sscf->state) {

		  case SSCFU_RELEASED:
			if (m)
				FUNC2(m);
			FUNC0(sscf, SAAL_RELEASE_confirm, NULL);
			break;

		  case SSCFU_AWAITING_ESTABLISH:
			FUNC5(sscf, SSCFU_AWAITING_RELEASE);
			FUNC3(sscf, SSCOP_RELEASE_request, m, 0);
			break;

		  case SSCFU_AWAITING_RELEASE:
			if (m)
				FUNC2(m);
			goto badsig;

		  case SSCFU_ESTABLISHED:
			FUNC5(sscf, SSCFU_AWAITING_RELEASE);
			FUNC3(sscf, SSCOP_RELEASE_request, m, 0);
			break;

		  case SSCFU_RESYNC:
			FUNC5(sscf, SSCFU_AWAITING_RELEASE);
			FUNC3(sscf, SSCOP_RELEASE_request, m, 0);
			break;
		}
		break;

	  case SAAL_DATA_request:
		/* arg is DATA */
		switch (sscf->state) {

		  case SSCFU_RELEASED:
		  case SSCFU_AWAITING_ESTABLISH:
		  case SSCFU_AWAITING_RELEASE:
			FUNC2(m);
			goto badsig;

		  case SSCFU_ESTABLISHED:
			FUNC3(sscf, SSCOP_DATA_request, m, 0);
			break;

		  case SSCFU_RESYNC:
			FUNC2(m);
			goto badsig;
		}
		break;

	  case SAAL_UDATA_request:
		/* arg is UDATA */
		FUNC3(sscf, SSCOP_UDATA_request, m, 0);
		break;

	  case SAAL_ESTABLISH_indication:
	  case SAAL_ESTABLISH_confirm:
	  case SAAL_RELEASE_confirm:
	  case SAAL_RELEASE_indication:
	  case SAAL_DATA_indication:
	  case SAAL_UDATA_indication:
		FUNC1(0);
		break;
	}
	return;

  badsig:
	FUNC4(sscf, SSCFU_DBG_ERR, (sscf, sscf->aarg,
	    "bad signal %s in state %s", sscf_sigs[sig],
	    sscf_states[sscf->state]));
}