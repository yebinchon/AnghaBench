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
struct member {scalar_t__ ellipsis; } ;

/* Variables and functions */
 struct member* FUNC0 (struct member*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  members ; 

__attribute__((used)) static const char *
FUNC1(struct member *m)
{
    struct member *n = FUNC0(m, members);
    if (n == NULL)
	return "";
    if (n->ellipsis && FUNC0(n, members) == NULL)
	return "";
    return ",";
}