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
struct match_file {int /*<<< orphan*/  pathname; } ;
struct archive_rb_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**) ; 
 int FUNC1 (char const*,char const*) ; 

__attribute__((used)) static int
FUNC2(const struct archive_rb_node *n, const void *key)
{
	struct match_file *f = (struct match_file *)(uintptr_t)n;
	const char *p;

	FUNC0(NULL, &(f->pathname), &p);
	if (p == NULL)
		return (-1);
	return (FUNC1(p, (const char *)key));
}