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
struct ssh {int dummy; } ;
typedef  int /*<<< orphan*/  Channel ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct ssh*,int) ; 
 int FUNC1 (struct ssh*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ssh*,char*,char const*,int) ; 

__attribute__((used)) static Channel *
FUNC3(struct ssh *ssh, const char *where, const char *what)
{
	int id = FUNC1(ssh, where, what);
	Channel *c;

	if ((c = FUNC0(ssh, id)) == NULL) {
		FUNC2(ssh,
		    "%s packet referred to nonexistent channel %d", what, id);
	}
	return c;
}