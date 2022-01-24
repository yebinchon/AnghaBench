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
struct roff_meta {int /*<<< orphan*/  msec; int /*<<< orphan*/  title; } ;
struct html {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TAG_TITLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct html*) ; 
 int /*<<< orphan*/  FUNC3 (struct html*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct html*,char*) ; 

__attribute__((used)) static void
FUNC5(const struct roff_meta *man, struct html *h)
{
	char	*cp;

	FUNC2(h);
	FUNC1(&cp, "%s(%s)", man->title, man->msec);
	FUNC3(h, TAG_TITLE, "");
	FUNC4(h, cp);
	FUNC0(cp);
}