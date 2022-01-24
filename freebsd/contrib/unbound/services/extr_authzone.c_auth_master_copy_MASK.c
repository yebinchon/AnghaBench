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
struct auth_master {struct auth_master* host; struct auth_master* file; scalar_t__ list; int /*<<< orphan*/ * next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct auth_master*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct auth_master*,int) ; 
 void* FUNC4 (struct auth_master*) ; 

__attribute__((used)) static struct auth_master*
FUNC5(struct auth_master* o)
{
	struct auth_master* m;
	if(!o) return NULL;
	m = (struct auth_master*)FUNC3(o, sizeof(*o));
	if(!m) {
		FUNC2("malloc failure");
		return NULL;
	}
	m->next = NULL;
	if(m->host) {
		m->host = FUNC4(m->host);
		if(!m->host) {
			FUNC1(m);
			FUNC2("malloc failure");
			return NULL;
		}
	}
	if(m->file) {
		m->file = FUNC4(m->file);
		if(!m->file) {
			FUNC1(m->host);
			FUNC1(m);
			FUNC2("malloc failure");
			return NULL;
		}
	}
	if(m->list) {
		m->list = FUNC0(m->list);
		if(!m->list) {
			FUNC1(m->file);
			FUNC1(m->host);
			FUNC1(m);
			return NULL;
		}
	}
	return m;
}