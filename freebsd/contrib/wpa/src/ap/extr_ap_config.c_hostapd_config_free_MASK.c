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
struct TYPE_2__ {struct hostapd_config* range; } ;
struct hostapd_config {size_t num_bss; int /*<<< orphan*/  civic; int /*<<< orphan*/  lci; struct hostapd_config* acs_chan_bias; struct hostapd_config* driver_params; TYPE_1__ acs_ch_list; struct hostapd_config* basic_rates; struct hostapd_config* supported_rates; struct hostapd_config* bss; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hostapd_config) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_config*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct hostapd_config *conf)
{
	size_t i;

	if (conf == NULL)
		return;

	for (i = 0; i < conf->num_bss; i++)
		FUNC0(conf->bss[i]);
	FUNC1(conf->bss);
	FUNC1(conf->supported_rates);
	FUNC1(conf->basic_rates);
	FUNC1(conf->acs_ch_list.range);
	FUNC1(conf->driver_params);
#ifdef CONFIG_ACS
	os_free(conf->acs_chan_bias);
#endif /* CONFIG_ACS */
	FUNC2(conf->lci);
	FUNC2(conf->civic);

	FUNC1(conf);
}