#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int lt_start; int lt_end; int /*<<< orphan*/  lt_dow; } ;
typedef  TYPE_1__ login_time_t ;
struct TYPE_6__ {int /*<<< orphan*/  cn; int /*<<< orphan*/  fl; int /*<<< orphan*/ * dw; } ;

/* Variables and functions */
 int /*<<< orphan*/  LTM_ANY ; 
 int /*<<< orphan*/  LTM_NONE ; 
 TYPE_4__* dws ; 
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (char*,int*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char) ; 

login_time_t
FUNC8(const char *str)
{
    login_time_t    t;

    FUNC2(&t, 0, sizeof t);
    t.lt_dow = LTM_NONE;
    if (str && *str && FUNC4(str, "Never") != 0 && FUNC4(str, "None") != 0) {
	int		 i;
	login_time_t	 m = t;
	char		*p;
	char		 buf[64];

	/* Make local copy and force lowercase to simplify parsing */
	FUNC5(buf, str, sizeof buf);
	for (i = 0; buf[i]; i++)
	    buf[i] = (char)FUNC7(buf[i]);
	p = buf;

	while (FUNC0(*p)) {

	    i = 0;
	    while (dws[i].dw && FUNC6(p, dws[i].dw, dws[i].cn) != 0)
		i++;
	    if (dws[i].dw == NULL)
		break;
	    m.lt_dow |= dws[i].fl;
	    p += dws[i].cn;
	}

	if (m.lt_dow == LTM_NONE) /* No (valid) prefix, assume any */
	    m.lt_dow |= LTM_ANY;

	if (FUNC1(*p))
	    p = FUNC3(p, &m.lt_start);
	else
	    m.lt_start = 0;
	if (*p == '-')
	    p = FUNC3(p + 1, &m.lt_end);
	else
	    m.lt_end = 1440;

	t = m;
    }
    return (t);
}