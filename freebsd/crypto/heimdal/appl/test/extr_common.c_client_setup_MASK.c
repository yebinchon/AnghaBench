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
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int*,char**,int /*<<< orphan*/  (*) (int,int /*<<< orphan*/ ,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  num_args ; 

int
FUNC2(krb5_context *context, int *argc, char **argv)
{
    int optind = *argc;
    int port = FUNC1(context, &optind, argv, client_usage);
    if(*argc - optind != 1)
	FUNC0(1, args, num_args);
    *argc = optind;
    return port;
}