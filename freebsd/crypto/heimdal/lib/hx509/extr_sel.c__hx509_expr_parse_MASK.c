#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hx_expr {int dummy; } ;
struct TYPE_2__ {char const* buf; struct hx_expr* expr; int /*<<< orphan*/ * error; scalar_t__ offset; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 TYPE_1__ _hx509_expr_input ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

struct hx_expr *
FUNC3(const char *buf)
{
    _hx509_expr_input.buf = buf;
    _hx509_expr_input.length = FUNC1(buf);
    _hx509_expr_input.offset = 0;
    _hx509_expr_input.expr = NULL;

    if (_hx509_expr_input.error) {
	FUNC0(_hx509_expr_input.error);
	_hx509_expr_input.error = NULL;
    }

    FUNC2();

    return _hx509_expr_input.expr;
}