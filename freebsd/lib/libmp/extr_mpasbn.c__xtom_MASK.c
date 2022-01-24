#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * bn; } ;
typedef  TYPE_1__ MINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char const*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 TYPE_1__* FUNC5 (int) ; 

__attribute__((used)) static MINT *
FUNC6(const char *msg, const char *s)
{
	MINT *mp;

	mp = FUNC5(sizeof(*mp));
	if (mp == NULL)
		FUNC3(("%s", msg));
	mp->bn = FUNC2();
	if (mp->bn == NULL)
		FUNC4(msg);
	FUNC0(msg, FUNC1(&mp->bn, s));
	return (mp);
}