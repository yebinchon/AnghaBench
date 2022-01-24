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
struct TYPE_2__ {char* es_name; int es_nports; int es_nvlangroups; int /*<<< orphan*/  es_vlan_caps; } ;
struct cfg {char* controlfile; TYPE_1__ info; scalar_t__ verbose; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHERSWITCH_VLAN_CAPS_BITS ; 
 int /*<<< orphan*/  FUNC0 (struct cfg*) ; 
 int /*<<< orphan*/  FUNC1 (struct cfg*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cfg*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 char* FUNC5 (char*,char) ; 

__attribute__((used)) static void
FUNC6(struct cfg *cfg)
{
	const char *c;
	int i;
	
	c = FUNC5(cfg->controlfile, '/');
	if (c != NULL)
		c = c + 1;
	else
		c = cfg->controlfile;
	if (cfg->verbose) {
		FUNC4("%s: %s with %d ports and %d VLAN groups\n", c,
		    cfg->info.es_name, cfg->info.es_nports,
		    cfg->info.es_nvlangroups);
		FUNC4("%s: ", c);
		FUNC3("VLAN capabilities",  cfg->info.es_vlan_caps,
		    ETHERSWITCH_VLAN_CAPS_BITS);
		FUNC4("\n");
	}
	FUNC0(cfg);
	for (i=0; i<cfg->info.es_nports; i++) {
		FUNC1(cfg, i);
	}
	for (i=0; i<cfg->info.es_nvlangroups; i++) {
		FUNC2(cfg, i);
	}
}