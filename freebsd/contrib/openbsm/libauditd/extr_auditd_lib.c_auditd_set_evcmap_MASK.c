#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  evn_map ;
typedef  int /*<<< orphan*/  evc_map ;
struct TYPE_8__ {int /*<<< orphan*/  en_number; int /*<<< orphan*/  en_name; } ;
typedef  TYPE_1__ au_evname_map_t ;
struct TYPE_9__ {char* ae_name; char* ae_desc; int /*<<< orphan*/  ae_class; int /*<<< orphan*/  ae_number; } ;
typedef  TYPE_2__ au_event_ent_t ;
struct TYPE_10__ {int /*<<< orphan*/  ec_class; int /*<<< orphan*/  ec_number; } ;
typedef  TYPE_3__ au_evclass_map_t ;

/* Variables and functions */
 int ADE_NOMEM ; 
 int /*<<< orphan*/  AU_EVENT_DESC_MAX ; 
 int /*<<< orphan*/  AU_EVENT_NAME_MAX ; 
 scalar_t__ FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_2__* FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC8(void)
{
	au_event_ent_t ev, *evp;
	au_evclass_map_t evc_map;
	au_evname_map_t evn_map;
	int ctr = 0;

	/*
	 * XXX There's a risk here that the BSM library will return NULL
	 * for an event when it can't properly map it to a class. In that
	 * case, we will not process any events beyond the one that failed,
	 * but should. We need a way to get a count of the events.
	 */
	ev.ae_name = (char *)FUNC5(AU_EVENT_NAME_MAX);
	ev.ae_desc = (char *)FUNC5(AU_EVENT_DESC_MAX);
	if (ev.ae_name == NULL || ev.ae_desc == NULL) {
		if (ev.ae_name != NULL)
			FUNC3(ev.ae_name);
		return (ADE_NOMEM);
	}

	/*
	 * XXXRW: Currently we have no way to remove mappings from the kernel
	 * when they are removed from the file-based mappings.
	 */
	evp = &ev;
	FUNC6();
	while ((evp = FUNC4(evp)) != NULL) {
		/*
		 * Set the event-to-name mapping entry.  If there's not room
		 * in the in-kernel string, then we skip the entry.  Possibly
		 * better than truncating...?
		 */
		if (FUNC7(evn_map.en_name, evp->ae_name,
		    sizeof(evn_map.en_name)) < sizeof(evn_map.en_name)) {
			evn_map.en_number = evp->ae_number;
			(void)FUNC1(&evn_map, sizeof(evn_map));
		}

		/*
		 * Set the event-to-class mapping entry.
		 */
		evc_map.ec_number = evp->ae_number;
		evc_map.ec_class = evp->ae_class;
		if (FUNC0(&evc_map, sizeof(evc_map)) == 0)
			ctr++;
	}
	FUNC2();
	FUNC3(ev.ae_name);
	FUNC3(ev.ae_desc);

	return (ctr);
}