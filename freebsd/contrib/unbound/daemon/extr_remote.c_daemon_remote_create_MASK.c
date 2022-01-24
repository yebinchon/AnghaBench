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
struct daemon_remote {int max_active; int use_cert; int /*<<< orphan*/ * ctx; } ;
struct config_strlist {char* str; struct config_strlist* next; } ;
struct TYPE_2__ {struct config_strlist* first; } ;
struct config_file {TYPE_1__ control_ifs; scalar_t__ control_use_cert; int /*<<< orphan*/  remote_control_enable; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct daemon_remote*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (struct config_file*) ; 
 int /*<<< orphan*/  FUNC5 (struct daemon_remote*,struct config_file*) ; 

struct daemon_remote*
FUNC6(struct config_file* cfg)
{
	struct daemon_remote* rc = (struct daemon_remote*)FUNC0(1, 
		sizeof(*rc));
	if(!rc) {
		FUNC2("out of memory in daemon_remote_create");
		return NULL;
	}
	rc->max_active = 10;

	if(!cfg->remote_control_enable) {
		rc->ctx = NULL;
		return rc;
	}
	if(FUNC4(cfg) && cfg->control_use_cert) {
		if(!FUNC5(rc, cfg)) {
			FUNC1(rc);
			return NULL;
		}
		rc->use_cert = 1;
	} else {
		struct config_strlist* p;
		rc->ctx = NULL;
		rc->use_cert = 0;
		if(!FUNC4(cfg))
		  for(p = cfg->control_ifs.first; p; p = p->next) {
			if(p->str && p->str[0] != '/')
				FUNC3("control-interface %s is not using TLS, but plain transfer, because first control-interface in config file is a local socket (starts with a /).", p->str);
		}
	}
	return rc;
}