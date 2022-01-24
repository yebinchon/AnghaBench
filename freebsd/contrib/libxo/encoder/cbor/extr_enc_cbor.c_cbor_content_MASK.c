#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xo_handle_t ;
struct TYPE_10__ {int /*<<< orphan*/ * xb_bufp; int /*<<< orphan*/ * xb_curp; } ;
typedef  TYPE_1__ xo_buffer_t ;
struct TYPE_11__ {int c_indent; TYPE_1__ c_data; } ;
typedef  TYPE_2__ cbor_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  CBOR_FALSE ; 
 int /*<<< orphan*/  CBOR_NEGATIVE ; 
 int /*<<< orphan*/  CBOR_NLIMIT ; 
 int /*<<< orphan*/  CBOR_STRING ; 
 int /*<<< orphan*/  CBOR_TRUE ; 
 int /*<<< orphan*/  CBOR_ULIMIT ; 
 int /*<<< orphan*/  CBOR_UNSIGNED ; 
 unsigned long long ULLONG_MAX ; 
 int XOF_PRETTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 unsigned long long FUNC4 (char const*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,unsigned int) ; 
 unsigned int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 

__attribute__((used)) static int
FUNC9 (xo_handle_t *xop, cbor_private_t *cbor, xo_buffer_t *xbp,
	      const char *value)
{
    int rc = 0;

    unsigned offset = FUNC6(xbp);

    if (value == NULL || *value == '\0' || FUNC8(value, "true"))
	FUNC0(xop, cbor, &cbor->c_data, CBOR_TRUE, 0, NULL);
    else if (FUNC8(value, "false"))
	FUNC0(xop, cbor, &cbor->c_data, CBOR_FALSE, 0, NULL);
    else {
	int negative = 0;
	if (*value == '-') {
	    value += 1;
	    negative = 1;
	}

	char *ep;
	unsigned long long ival;
	ival = FUNC4(value, &ep, 0);
	if (ival == ULLONG_MAX)	/* Sometimes a string is just a string */
	    FUNC0(xop, cbor, xbp, CBOR_STRING, FUNC3(value), value);
	else {
	    *xbp->xb_curp = negative ? CBOR_NEGATIVE : CBOR_UNSIGNED;
	    if (negative)
		ival -= 1;	/* Don't waste a negative zero */
	    FUNC1(xbp, ival, negative ? CBOR_NLIMIT : CBOR_ULIMIT);
	}
    }

    if (FUNC7(xop) & XOF_PRETTY)
	FUNC2(stdout, "content", FUNC5(xbp, offset),
		     xbp->xb_curp - xbp->xb_bufp - offset, "",
		     cbor->c_indent * 2);

    return rc;
}