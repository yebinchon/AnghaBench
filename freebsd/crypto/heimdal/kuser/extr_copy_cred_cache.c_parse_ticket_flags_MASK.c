#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int i; } ;
typedef  TYPE_1__ krb5_ticket_flags ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  ff ;
struct TYPE_7__ {int proxy; } ;
typedef  TYPE_2__ TicketFlags ;

/* Variables and functions */
 size_t FUNC0 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(krb5_context context,
		   const char *string, krb5_ticket_flags *ret_flags)
{
    TicketFlags ff;
    int flags = FUNC5(string, FUNC1(), 0);
    if (flags == -1)	/* XXX */
	FUNC3(context, 1, "bad flags specified: \"%s\"", string);

    FUNC4(&ff, 0, sizeof(ff));
    ff.proxy = 1;
    if ((size_t)FUNC5("proxy", FUNC1(), 0) == FUNC0(ff))
	ret_flags->i = flags;
    else
	ret_flags->i = FUNC2(flags);
}