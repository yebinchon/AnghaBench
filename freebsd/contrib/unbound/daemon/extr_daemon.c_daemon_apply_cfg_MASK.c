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
struct daemon {TYPE_1__* env; int /*<<< orphan*/  superalloc; struct config_file* cfg; } ;
struct config_file {int /*<<< orphan*/  msg_cache_size; int /*<<< orphan*/  msg_cache_slabs; } ;
struct TYPE_2__ {int /*<<< orphan*/  infra_cache; int /*<<< orphan*/  rrset_cache; int /*<<< orphan*/  msg_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  HASH_DEFAULT_STARTARRAY ; 
 int /*<<< orphan*/  FUNC0 (struct config_file*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct config_file*) ; 
 int /*<<< orphan*/  msgreply_sizefunc ; 
 int /*<<< orphan*/  query_entry_delete ; 
 int /*<<< orphan*/  query_info_compare ; 
 int /*<<< orphan*/  reply_info_delete ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct config_file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(struct daemon* daemon, struct config_file* cfg)
{
        daemon->cfg = cfg;
	FUNC0(cfg);
	if(!FUNC6(daemon->env->msg_cache, cfg->msg_cache_size,
	   	cfg->msg_cache_slabs)) {
		FUNC5(daemon->env->msg_cache);
		daemon->env->msg_cache = FUNC4(cfg->msg_cache_slabs,
			HASH_DEFAULT_STARTARRAY, cfg->msg_cache_size,
			msgreply_sizefunc, query_info_compare,
			query_entry_delete, reply_info_delete, NULL);
		if(!daemon->env->msg_cache) {
			FUNC1("malloc failure updating config settings");
		}
	}
	if((daemon->env->rrset_cache = FUNC3(
		daemon->env->rrset_cache, cfg, &daemon->superalloc)) == 0)
		FUNC1("malloc failure updating config settings");
	if((daemon->env->infra_cache = FUNC2(daemon->env->infra_cache,
		cfg))==0)
		FUNC1("malloc failure updating config settings");
}