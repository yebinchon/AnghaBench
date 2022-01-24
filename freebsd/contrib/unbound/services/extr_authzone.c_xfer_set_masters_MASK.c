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
struct config_strlist {int /*<<< orphan*/  str; struct config_strlist* next; } ;
struct config_auth {struct config_strlist* allow_notify; struct config_strlist* masters; struct config_strlist* urls; } ;
struct auth_master {int http; int ixfr; int allow_notify; void* host; int /*<<< orphan*/  ssl; int /*<<< orphan*/  port; int /*<<< orphan*/  file; struct auth_master* next; } ;

/* Variables and functions */
 struct auth_master* FUNC0 (struct auth_master***) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(struct auth_master** list, struct config_auth* c,
	int with_http)
{
	struct auth_master* m;
	struct config_strlist* p;
	/* list points to the first, or next pointer for the new element */
	while(*list) {
		list = &( (*list)->next );
	}
	if(with_http)
	  for(p = c->urls; p; p = p->next) {
		m = FUNC0(&list);
		m->http = 1;
		if(!FUNC2(p->str, &m->host, &m->file, &m->port, &m->ssl))
			return 0;
	}
	for(p = c->masters; p; p = p->next) {
		m = FUNC0(&list);
		m->ixfr = 1; /* this flag is not configurable */
		m->host = FUNC3(p->str);
		if(!m->host) {
			FUNC1("malloc failure");
			return 0;
		}
	}
	for(p = c->allow_notify; p; p = p->next) {
		m = FUNC0(&list);
		m->allow_notify = 1;
		m->host = FUNC3(p->str);
		if(!m->host) {
			FUNC1("malloc failure");
			return 0;
		}
	}
	return 1;
}