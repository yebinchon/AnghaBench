#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* name; } ;
struct TYPE_7__ {char* s; size_t length; } ;
struct tree {size_t dirname_length; char* basename; TYPE_1__ restore_time; TYPE_2__ path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,size_t) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char const*,size_t) ; 

__attribute__((used)) static void
FUNC4(struct tree *t, const char *name, size_t name_length)
{
	size_t size_needed;

	t->path.s[t->dirname_length] = '\0';
	t->path.length = t->dirname_length;
	/* Strip trailing '/' from name, unless entire name is "/". */
	while (name_length > 1 && name[name_length - 1] == '/')
		name_length--;

	/* Resize pathname buffer as needed. */
	size_needed = name_length + t->dirname_length + 2;
	FUNC1(&t->path, size_needed);
	/* Add a separating '/' if it's needed. */
	if (t->dirname_length > 0 && t->path.s[FUNC2(&t->path)-1] != '/')
		FUNC0(&t->path, '/');
	t->basename = t->path.s + FUNC2(&t->path);
	FUNC3(&t->path, name, name_length);
	t->restore_time.name = t->basename;
}