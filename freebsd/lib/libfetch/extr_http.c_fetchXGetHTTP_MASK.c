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
struct url_stat {int dummy; } ;
struct url {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct url*,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (struct url*,char*,struct url_stat*,int /*<<< orphan*/ ,char const*) ; 

FILE *
FUNC2(struct url *URL, struct url_stat *us, const char *flags)
{
	return (FUNC1(URL, "GET", us, FUNC0(URL, flags), flags));
}