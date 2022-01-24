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
struct views {int dummy; } ;
struct view {int /*<<< orphan*/  lock; int /*<<< orphan*/  local_zones; scalar_t__ isfirst; } ;
struct config_view {struct config_strlist* local_zones_nodefault; int /*<<< orphan*/ * local_data; int /*<<< orphan*/ * local_zones; scalar_t__ isfirst; int /*<<< orphan*/  name; struct config_view* next; } ;
struct config_strlist {char* str; struct config_strlist* next; } ;
struct config_file {int local_zones_disable_default; int /*<<< orphan*/ * local_zones; struct config_strlist* local_zones_nodefault; int /*<<< orphan*/ * local_data; struct config_view* views; } ;
typedef  int /*<<< orphan*/  lz_cfg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct config_file*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct config_file*,int /*<<< orphan*/ ,int) ; 
 char* FUNC7 (char*) ; 
 struct view* FUNC8 (struct views*,int /*<<< orphan*/ ) ; 

int 
FUNC9(struct views* vs, struct config_file* cfg)
{
	struct config_view* cv;
	struct view* v;
	struct config_file lz_cfg;
	/* Check existence of name in first view (last in config). Rest of
	 * views are already checked when parsing config. */
	if(cfg->views && !cfg->views->name) {
		FUNC5("view without a name");
		return 0;
	}
	for(cv = cfg->views; cv; cv = cv->next) {
		/* create and enter view */
		if(!(v = FUNC8(vs, cv->name)))
			return 0;
		v->isfirst = cv->isfirst;
		if(cv->local_zones || cv->local_data) {
			if(!(v->local_zones = FUNC3())){
				FUNC4(&v->lock);
				return 0;
			}
			FUNC6(&lz_cfg, 0, sizeof(lz_cfg));
			lz_cfg.local_zones = cv->local_zones;
			lz_cfg.local_data = cv->local_data;
			lz_cfg.local_zones_nodefault =
				cv->local_zones_nodefault;
			if(v->isfirst) {
				/* Do not add defaults to view-specific
				 * local-zone when global local zone will be
				 * used. */
				struct config_strlist* nd;
				lz_cfg.local_zones_disable_default = 1;
				/* Add nodefault zones to list of zones to add,
				 * so they will be used as if they are
				 * configured as type transparent */
				for(nd = cv->local_zones_nodefault; nd;
					nd = nd->next) {
					char* nd_str, *nd_type;
					nd_str = FUNC7(nd->str);
					if(!nd_str) {
						FUNC5("out of memory");
						FUNC4(&v->lock);
						return 0;
					}
					nd_type = FUNC7("nodefault");
					if(!nd_type) {
						FUNC5("out of memory");
						FUNC1(nd_str);
						FUNC4(&v->lock);
						return 0;
					}
					if(!FUNC0(
						&lz_cfg.local_zones, nd_str,
						nd_type)) {
						FUNC5("failed to insert "
							"default zones into "
							"local-zone list");
						FUNC1(nd_str);
						FUNC1(nd_type);
						FUNC4(&v->lock);
						return 0;
					}
				}
			}
			if(!FUNC2(v->local_zones, &lz_cfg)){
				FUNC4(&v->lock);
				return 0;
			}
			/* local_zones, local_zones_nodefault and local_data 
			 * are free'd from config_view by local_zones_apply_cfg.
			 * Set pointers to NULL. */
			cv->local_zones = NULL;
			cv->local_data = NULL;
			cv->local_zones_nodefault = NULL;
		}
		FUNC4(&v->lock);
	}
	return 1;
}