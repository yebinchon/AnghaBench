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
struct fstypelist {int dummy; } ;
struct entry {void* options; void* type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fstypelist*,struct entry*,int /*<<< orphan*/ ) ; 
 struct entry* FUNC1 (int) ; 
 int /*<<< orphan*/  entries ; 
 void* FUNC2 (char const*) ; 

__attribute__((used)) static void
FUNC3(struct fstypelist *list, const char *type, const char *opts)
{
	struct entry *e;

	e = FUNC1(sizeof(struct entry));
	e->type = FUNC2(type);
	e->options = FUNC2(opts);
	FUNC0(list, e, entries);
}