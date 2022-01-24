#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* hx509_request ;
typedef  int /*<<< orphan*/  hx509_context ;
struct TYPE_3__ {scalar_t__ name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (scalar_t__,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 

int
FUNC4(hx509_context context, hx509_request req, FILE *f)
{
    int ret;

    if (req->name) {
	char *subject;
	ret = FUNC2(req->name, &subject);
	if (ret) {
	    FUNC3(context, 0, ret, "Failed to print name");
	    return ret;
	}
        FUNC0(f, "name: %s\n", subject);
	FUNC1(subject);
    }

    return 0;
}