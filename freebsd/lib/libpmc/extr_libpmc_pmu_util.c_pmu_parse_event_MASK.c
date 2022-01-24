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
struct pmu_event_desc {int ped_umask; void* ped_l3_slice; void* ped_l3_thread; void* ped_config1; void* ped_ch_mask; void* ped_fc_mask; void* ped_ldlat; void* ped_frontend; void* ped_edge; void* ped_inv; void* ped_cmask; void* ped_any; void* ped_offcore_rsp; void* ped_period; void* ped_event; } ;

/* Variables and functions */
 void* DEFAULT_SAMPLE_COUNT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct pmu_event_desc*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 char* FUNC6 (char const*) ; 
 char* FUNC7 (char**,char*) ; 
 void* FUNC8 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC9(struct pmu_event_desc *ped, const char *eventin)
{
	char *event;
	char *kvp, *key, *value, *r;
	char *debug;

	if ((event = FUNC6(eventin)) == NULL)
		return (ENOMEM);
	r = event;
	FUNC1(ped, sizeof(*ped));
	ped->ped_period = DEFAULT_SAMPLE_COUNT;
	ped->ped_umask = -1;
	while ((kvp = FUNC7(&event, ",")) != NULL) {
		key = FUNC7(&kvp, "=");
		if (key == NULL)
			FUNC0();
		value = kvp;
		if (FUNC5(key, "umask") == 0)
			ped->ped_umask = FUNC8(value, NULL, 16);
		else if (FUNC5(key, "event") == 0)
			ped->ped_event = FUNC8(value, NULL, 16);
		else if (FUNC5(key, "period") == 0)
			ped->ped_period = FUNC8(value, NULL, 10);
		else if (FUNC5(key, "offcore_rsp") == 0)
			ped->ped_offcore_rsp = FUNC8(value, NULL, 16);
		else if (FUNC5(key, "any") == 0)
			ped->ped_any = FUNC8(value, NULL, 10);
		else if (FUNC5(key, "cmask") == 0)
			ped->ped_cmask = FUNC8(value, NULL, 10);
		else if (FUNC5(key, "inv") == 0)
			ped->ped_inv = FUNC8(value, NULL, 10);
		else if (FUNC5(key, "edge") == 0)
			ped->ped_edge = FUNC8(value, NULL, 10);
		else if (FUNC5(key, "frontend") == 0)
			ped->ped_frontend = FUNC8(value, NULL, 16);
		else if (FUNC5(key, "ldlat") == 0)
			ped->ped_ldlat = FUNC8(value, NULL, 16);
		else if (FUNC5(key, "fc_mask") == 0)
			ped->ped_fc_mask = FUNC8(value, NULL, 16);
		else if (FUNC5(key, "ch_mask") == 0)
			ped->ped_ch_mask = FUNC8(value, NULL, 16);
		else if (FUNC5(key, "config1") == 0)
			ped->ped_config1 = FUNC8(value, NULL, 16);
		else if (FUNC5(key, "l3_thread_mask") == 0)
			ped->ped_l3_thread = FUNC8(value, NULL, 16);
		else if (FUNC5(key, "l3_slice_mask") == 0)
			ped->ped_l3_slice = FUNC8(value, NULL, 16);
		else {
			debug = FUNC3("PMUDEBUG");
			if (debug != NULL && FUNC5(debug, "true") == 0 && value != NULL)
				FUNC4("unrecognized kvpair: %s:%s\n", key, value);
		}
	}
	FUNC2(r);
	return (0);
}