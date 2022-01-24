#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u_long ;
typedef  int /*<<< orphan*/  u_int ;
struct env_var {int /*<<< orphan*/  ev_name; } ;

/* Variables and functions */
 int CMD_ERROR ; 
 int CMD_OK ; 
 int EV_NOHOOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,void const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (void const*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct env_var *ev, int flags, const void *value)
{
    u_long tdiv;
    char * eptr;

    tdiv = FUNC2(value, &eptr, 0);
    if (*(const char *)value == 0 || *eptr != 0) {
	FUNC1("invalid twiddle_divisor '%s'\n", (const char *)value);
	return (CMD_ERROR);
    }
    FUNC3((u_int)tdiv);
    FUNC0(ev->ev_name, flags | EV_NOHOOK, value, NULL, NULL);

    return(CMD_OK);
}