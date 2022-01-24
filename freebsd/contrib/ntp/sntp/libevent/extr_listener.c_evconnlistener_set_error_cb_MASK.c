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
struct evconnlistener {int /*<<< orphan*/  errorcb; } ;
typedef  int /*<<< orphan*/  evconnlistener_errorcb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evconnlistener*) ; 
 int /*<<< orphan*/  FUNC1 (struct evconnlistener*) ; 

void
FUNC2(struct evconnlistener *lev,
    evconnlistener_errorcb errorcb)
{
	FUNC0(lev);
	lev->errorcb = errorcb;
	FUNC1(lev);
}