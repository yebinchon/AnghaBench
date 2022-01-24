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
struct url {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (struct url*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (struct url*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 

FILE *
FUNC3(struct url *url, const char *flags)
{
	return (FUNC2(url, FUNC0('a') ? "APPE" : "STOR", NULL,
	    FUNC1(url, flags), flags));
}