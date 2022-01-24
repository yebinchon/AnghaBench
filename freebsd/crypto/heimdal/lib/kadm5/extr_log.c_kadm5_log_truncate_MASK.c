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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  kadm5_server_context ;
typedef  scalar_t__ kadm5_ret_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

kadm5_ret_t
FUNC6 (kadm5_server_context *server_context)
{
    kadm5_ret_t ret;
    uint32_t vno;

    ret = FUNC2 (server_context);
    if (ret)
	return ret;

    ret = FUNC1 (server_context, &vno);
    if (ret)
	return ret;

    ret = FUNC4 (server_context);
    if (ret)
	return ret;

    ret = FUNC5 (server_context, vno);
    if (ret)
	return ret;

    ret = FUNC3 (server_context);
    if (ret)
	return ret;

    ret = FUNC0 (server_context);
    if (ret)
	return ret;
    return 0;

}