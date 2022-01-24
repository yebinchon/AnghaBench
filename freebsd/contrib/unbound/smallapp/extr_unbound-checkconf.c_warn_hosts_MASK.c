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
struct sockaddr_storage {int dummy; } ;
struct config_stub {char* name; struct config_strlist* hosts; struct config_stub* next; } ;
struct config_strlist {char* str; struct config_strlist* next; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sockaddr_storage*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,struct sockaddr_storage*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char const*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC3(const char* typ, struct config_stub* list)
{
	struct sockaddr_storage a;
	socklen_t alen;
	struct config_stub* s;
	struct config_strlist* h;
	for(s=list; s; s=s->next) {
		for(h=s->hosts; h; h=h->next) {
			if(FUNC1(h->str, &a, &alen)) {
				FUNC2(stderr, "unbound-checkconf: warning:"
				  " %s %s: \"%s\" is an IP%s address, "
				  "and when looked up as a host name "
				  "during use may not resolve.\n",
				  s->name, typ, h->str,
				  FUNC0(&a, alen)?"6":"4");
			}
		}
	}
}