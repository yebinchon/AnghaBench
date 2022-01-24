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
struct idrent {int /*<<< orphan*/  isoent; } ;
struct archive_rb_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(const struct archive_rb_node *n1,
    const struct archive_rb_node *n2)
{
	const struct idrent *e1 = (const struct idrent *)n1;
	const struct idrent *e2 = (const struct idrent *)n2;

	return (FUNC0(e2->isoent, e1->isoent));
}