#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  num; } ;
typedef  TYPE_1__ BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int FUNC5(BIO *b, const char *in, int inl)
{
    int ret;

    FUNC3();
    ret = FUNC4(b->num, in, inl);
    FUNC0(b);
    if (ret <= 0) {
        if (FUNC2(ret))
            FUNC1(b);
    }
    return ret;
}