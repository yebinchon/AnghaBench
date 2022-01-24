#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ we_nbytes; int /*<<< orphan*/ * we_strings; int /*<<< orphan*/ * we_wordv; scalar_t__ we_wordc; } ;
typedef  TYPE_1__ wordexp_t ;

/* Variables and functions */
 int WRDE_APPEND ; 
 int WRDE_REUSE ; 
 int FUNC0 (char const*,TYPE_1__*,int) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

int
FUNC3(const char * __restrict words, wordexp_t * __restrict we, int flags)
{
	int error;

	if (flags & WRDE_REUSE)
		FUNC2(we);
	if ((flags & WRDE_APPEND) == 0) {
		we->we_wordc = 0;
		we->we_wordv = NULL;
		we->we_strings = NULL;
		we->we_nbytes = 0;
	}
	if ((error = FUNC1(words)) != 0) {
		FUNC2(we);
		return (error);
	}
	if ((error = FUNC0(words, we, flags)) != 0) {
		FUNC2(we);
		return (error);
	}
	return (0);
}