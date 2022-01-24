#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int wchar_t ;
struct TYPE_5__ {size_t chlen; int /*<<< orphan*/  ch; } ;
typedef  TYPE_1__ _GBK2KState ;
struct TYPE_6__ {int mb_cur_max; } ;
typedef  TYPE_2__ _GBK2KEncodingInfo ;

/* Variables and functions */
 int E2BIG ; 
 int EILSEQ ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int
FUNC7(_GBK2KEncodingInfo * __restrict ei,
    char * __restrict s, size_t n, wchar_t wc, _GBK2KState * __restrict psenc,
    size_t * __restrict nresult)
{
	size_t len;
	int ret;

	if (psenc->chlen != 0) {
		ret = EINVAL;
		goto err;
	}

	len = FUNC1(wc);
	if (n < len) {
		ret = E2BIG;
		goto err;
	}

	switch (len) {
	case 1:
		if (!FUNC3(FUNC0(wc     ))) {
			ret = EILSEQ;
			goto err;
		}
		break;
	case 2:
		if (!FUNC2  (FUNC0(wc >> 8)) ||
		    !FUNC5 (FUNC0(wc))) {
			ret = EILSEQ;
			goto err;
		}
		break;
	case 4:
		if (ei->mb_cur_max != 4 ||
		    !FUNC2  (FUNC0(wc >> 24)) ||
		    !FUNC4 (FUNC0(wc >> 16)) ||
		    !FUNC2  (FUNC0(wc >>  8)) ||
		    !FUNC4 (FUNC0(wc))) {
			ret = EILSEQ;
			goto err;
		}
		break;
	}

	FUNC6(s, psenc->ch, psenc->chlen);
	*nresult = psenc->chlen;
	/* _citrus_GBK2K_init_state(ei, psenc); */
	psenc->chlen = 0;

	return (0);

err:
	*nresult = (size_t)-1;
	return (ret);
}