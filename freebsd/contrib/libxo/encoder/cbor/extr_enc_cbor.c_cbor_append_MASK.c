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
struct TYPE_10__ {unsigned int* xb_curp; unsigned int* xb_bufp; } ;
typedef  TYPE_1__ xo_buffer_t ;
struct TYPE_11__ {int c_indent; } ;
typedef  TYPE_2__ cbor_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  CBOR_ULIMIT ; 
 int XOF_PRETTY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int*,char*,int) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,unsigned int) ; 
 unsigned int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7 (xo_handle_t *xop, cbor_private_t *cbor, xo_buffer_t *xbp,
	     unsigned major, unsigned minor, const char *data)
{
    if (!FUNC4(xbp, minor + 2))
	return;

    unsigned offset = FUNC5(xbp);

    *xbp->xb_curp = major;
    FUNC0(xbp, minor, CBOR_ULIMIT);
    if (data)
	FUNC2(xbp, data, minor);

    if (FUNC6(xop) & XOF_PRETTY)
	FUNC1(stdout, "append", FUNC3(xbp, offset),
		     xbp->xb_curp - xbp->xb_bufp - offset, "",
		     cbor->c_indent * 2);
}