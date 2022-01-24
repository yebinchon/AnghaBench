#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int maxfd; TYPE_1__* logsrc; int /*<<< orphan*/  log; } ;
typedef  TYPE_2__ config_t ;
struct TYPE_5__ {int fd; int logtype; int regular; int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPL_NAME ; 
 int /*<<< orphan*/  IPNAT_NAME ; 
 int /*<<< orphan*/  IPSTATE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  executesaver ; 
 int /*<<< orphan*/  filesaver ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nothingsaver ; 
 int /*<<< orphan*/  snmpv1saver ; 
 int /*<<< orphan*/  snmpv2saver ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  syslogsaver ; 

__attribute__((used)) static void FUNC2(config_t *conf)
{
	int i;

	FUNC1(conf, 0, sizeof(*conf));

	conf->log = stdout;
	conf->maxfd = -1;

	for (i = 0; i < 3; i++) {
		conf->logsrc[i].fd = -1;
		conf->logsrc[i].logtype = -1;
		conf->logsrc[i].regular = -1;
	}

	conf->logsrc[0].file = IPL_NAME;
	conf->logsrc[1].file = IPNAT_NAME;
	conf->logsrc[2].file = IPSTATE_NAME;

	FUNC0(&executesaver);
	FUNC0(&snmpv1saver);
	FUNC0(&snmpv2saver);
	FUNC0(&syslogsaver);
	FUNC0(&filesaver);
	FUNC0(&nothingsaver);
}