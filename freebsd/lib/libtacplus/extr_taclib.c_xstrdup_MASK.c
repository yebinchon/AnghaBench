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
struct tac_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tac_handle*,char*) ; 
 char* FUNC1 (char const*) ; 

__attribute__((used)) static char *
FUNC2(struct tac_handle *h, const char *s)
{
	char *r;

	if ((r = FUNC1(s)) == NULL)
		FUNC0(h, "Out of memory");
	return r;
}