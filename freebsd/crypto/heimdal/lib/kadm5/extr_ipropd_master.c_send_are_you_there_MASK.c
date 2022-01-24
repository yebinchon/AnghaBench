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
struct TYPE_6__ {int flags; int /*<<< orphan*/  fd; int /*<<< orphan*/  ac; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ slave ;
typedef  int /*<<< orphan*/  krb5_storage ;
struct TYPE_7__ {char* data; int length; } ;
typedef  TYPE_2__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  ARE_YOU_THERE ; 
 int SLAVE_F_AYT ; 
 int SLAVE_F_DEAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC7 (krb5_context context, slave *s)
{
    krb5_storage *sp;
    krb5_data data;
    char buf[4];
    int ret;

    if (s->flags & (SLAVE_F_DEAD|SLAVE_F_AYT))
	return 0;

    FUNC4(context, "slave %s missing, sending AYT", s->name);

    s->flags |= SLAVE_F_AYT;

    data.data = buf;
    data.length = 4;

    sp = FUNC1 (buf, 4);
    if (sp == NULL) {
	FUNC4 (context, "are_you_there: krb5_data_alloc");
	FUNC6(context, s);
	return 1;
    }
    FUNC2 (sp, ARE_YOU_THERE);
    FUNC0 (sp);

    ret = FUNC5(context, s->ac, &s->fd, &data);

    if (ret) {
	FUNC3 (context, ret, "are_you_there: krb5_write_priv_message");
	FUNC6(context, s);
	return 1;
    }

    return 0;
}