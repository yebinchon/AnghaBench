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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uchar_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_3__ {int /*<<< orphan*/  dde_phys; int /*<<< orphan*/  dde_key; } ;
typedef  TYPE_1__ ddt_entry_t ;
typedef  int /*<<< orphan*/  cbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DDT_KEY_WORDS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(objset_t *os, uint64_t object, ddt_entry_t *dde)
{
	uchar_t cbuf[sizeof (dde->dde_phys) + 1];
	uint64_t one, csize;
	int error;

	error = FUNC2(os, object, (uint64_t *)&dde->dde_key,
	    DDT_KEY_WORDS, &one, &csize);
	if (error)
		return (error);

	FUNC0(one == 1);
	FUNC0(csize <= sizeof (cbuf));

	error = FUNC3(os, object, (uint64_t *)&dde->dde_key,
	    DDT_KEY_WORDS, 1, csize, cbuf);
	if (error)
		return (error);

	FUNC1(cbuf, dde->dde_phys, csize, sizeof (dde->dde_phys));

	return (0);
}