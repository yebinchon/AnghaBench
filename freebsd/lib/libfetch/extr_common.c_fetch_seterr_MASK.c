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
struct fetcherr {char* string; int /*<<< orphan*/  cat; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAXERRSTRING ; 
 int /*<<< orphan*/  fetchLastErrCode ; 
 int /*<<< orphan*/  fetchLastErrString ; 
 struct fetcherr* FUNC0 (struct fetcherr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 

void
FUNC2(struct fetcherr *p, int e)
{
	p = FUNC0(p, e);
	fetchLastErrCode = p->cat;
	FUNC1(fetchLastErrString, MAXERRSTRING, "%s", p->string);
}