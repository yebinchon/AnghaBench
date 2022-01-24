#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  va_list ;
typedef  TYPE_1__* hx509_error ;
typedef  TYPE_2__* hx509_context ;
struct TYPE_9__ {TYPE_1__* error; } ;
struct TYPE_8__ {int code; struct TYPE_8__* next; int /*<<< orphan*/  msg; } ;

/* Variables and functions */
 int HX509_ERROR_APPEND ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

void
FUNC5(hx509_context context, int flags, int code,
			const char *fmt, va_list ap)
{
    hx509_error msg;

    if (context == NULL)
	return;

    msg = FUNC0(1, sizeof(*msg));
    if (msg == NULL) {
	FUNC3(context);
	return;
    }

    if (FUNC4(&msg->msg, fmt, ap) == -1) {
	FUNC3(context);
	FUNC1(msg);
	return;
    }
    msg->code = code;

    if (flags & HX509_ERROR_APPEND) {
	msg->next = context->error;
	context->error = msg;
    } else  {
	FUNC2(context->error);
	context->error = msg;
    }
}