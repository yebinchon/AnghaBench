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

/* Variables and functions */
 int /*<<< orphan*/  NSDB_GROUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  defaultsrc ; 
 int /*<<< orphan*/  setgrent_dtab ; 

int
FUNC1(int stayopen)
{
	(void)FUNC0(NULL, setgrent_dtab, NSDB_GROUP, "setgrent", defaultsrc,
	    stayopen);
	return (1);
}