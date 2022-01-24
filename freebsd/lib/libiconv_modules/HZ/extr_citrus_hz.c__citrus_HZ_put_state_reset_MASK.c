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
typedef  int /*<<< orphan*/  escape_t ;
struct TYPE_4__ {scalar_t__ chlen; int /*<<< orphan*/ * ch; int /*<<< orphan*/ * inuse; } ;
typedef  TYPE_1__ _HZState ;
typedef  int /*<<< orphan*/  _HZEncodingInfo ;

/* Variables and functions */
 int E2BIG ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ESCAPE_CHAR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static __inline int
FUNC4(_HZEncodingInfo * __restrict ei,
    char * __restrict s, size_t n, _HZState * __restrict psenc,
    size_t * __restrict nresult)
{
	escape_t *candidate;

	if (psenc->chlen != 0 || psenc->inuse == NULL)
		return (EINVAL);
	candidate = FUNC1(ei);
	if (psenc->inuse != candidate) {
		if (n < 2)
			return (E2BIG);
		n -= 2;
		psenc->ch[psenc->chlen++] = ESCAPE_CHAR;
		psenc->ch[psenc->chlen++] = FUNC0(candidate);
	}
	if (n < 1)
		return (E2BIG);
	if (psenc->chlen > 0)
		FUNC3(s, psenc->ch, psenc->chlen);
	*nresult = psenc->chlen;
	FUNC2(ei, psenc);

	return (0);
}