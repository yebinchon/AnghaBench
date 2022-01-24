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
typedef  size_t uChar ;
struct KeyFuncs {scalar_t__ const func; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int len; scalar_t__* buf; } ;
typedef  scalar_t__ KEYCMD ;
typedef  TYPE_1__ CStr ;

/* Variables and functions */
 struct KeyFuncs* FuncNames ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  STRQQ ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfree ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(const KEYCMD *map, CStr *in)
{
    struct KeyFuncs *fp;

    if (in->len < 2) {
	unsigned char *unparsed;

	unparsed = FUNC3(in, STRQQ);
	FUNC1(unparsed, xfree);
	for (fp = FuncNames; fp->name; fp++) {
	    if (fp->func == map[(uChar) *(in->buf)]) {
		FUNC4("%s\t->\t%s\n", unparsed, fp->name);
	    }
	}
	FUNC2(unparsed);
    }
    else
	FUNC0(in);
}