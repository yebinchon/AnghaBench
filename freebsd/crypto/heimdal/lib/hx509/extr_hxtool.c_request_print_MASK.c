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
struct request_print_options {int dummy; } ;
typedef  int /*<<< orphan*/  hx509_request ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC5(struct request_print_options *opt, int argc, char **argv)
{
    int ret, i;

    FUNC4("request print\n");

    for (i = 0; i < argc; i++) {
	hx509_request req;

	ret = FUNC0(context, argv[i], &req);
	if (ret)
	    FUNC2(context, 1, ret, "parse_request: %s", argv[i]);

	ret = FUNC1(context, req, stdout);
	FUNC3(&req);
	if (ret)
	    FUNC2(context, 1, ret, "Failed to print file %s", argv[i]);
    }

    return 0;
}