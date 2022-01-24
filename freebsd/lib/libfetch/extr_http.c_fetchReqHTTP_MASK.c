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
 int /*<<< orphan*/  FUNC0 (struct url*,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (struct url*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*,char const*) ; 

FILE *
FUNC2(struct url *URL, const char *method, const char *flags,
	const char *content_type, const char *body)
{

	return (FUNC1(URL, method, NULL, FUNC0(URL, flags),
	    flags, content_type, body));
}