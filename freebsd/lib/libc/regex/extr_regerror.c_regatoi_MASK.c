#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rerr {scalar_t__ code; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  re_endp; } ;
typedef  TYPE_1__ regex_t ;

/* Variables and functions */
 struct rerr* rerrs ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *
FUNC2(const regex_t *preg, char *localbuf)
{
	struct rerr *r;

	for (r = rerrs; r->code != 0; r++)
		if (FUNC1(r->name, preg->re_endp) == 0)
			break;
	if (r->code == 0)
		return("0");

	FUNC0(localbuf, "%d", r->code);
	return(localbuf);
}