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
struct env_var {int /*<<< orphan*/  ev_name; } ;

/* Variables and functions */
 int CMD_OK ; 
 int EV_NOHOOK ; 
 int FUNC0 (void const*) ; 
 scalar_t__ FUNC1 (void const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,void const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct env_var *ev, int flags, const void *value)
{
    int		ret;

    if ((value == NULL) || (FUNC1(value) == 0)) {
	/*
	 * Return CMD_OK instead of CMD_ERROR to prevent forth syntax error,
	 * which would prevent it processing any further loader.conf entries.
	 */
	return (CMD_OK);
    }

    ret = FUNC0(value);
    if (ret != CMD_OK)
	return (ret);

    FUNC2(ev->ev_name, flags | EV_NOHOOK, value, NULL, NULL);
    return (CMD_OK);
}