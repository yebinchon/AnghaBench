#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_storage ;
struct TYPE_4__ {size_t length; void* data; } ;
typedef  TYPE_1__ krb5_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC4 (void*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static int
FUNC7(const char *name, krb5_storage *sp, void *expected, size_t len)
{
    int ret = 0;
    krb5_data data;
    if (FUNC3(sp, &data))
	FUNC0(1, "krb5_storage_to_data failed");
    FUNC2(sp);
    if(data.length != len || FUNC4(data.data, expected, len) != 0) {
	FUNC6("%s mismatch\n", name);
	FUNC6("  Expected: ");
	FUNC5(expected, len);
	FUNC6("  Actual:   ");
	FUNC5(data.data, data.length);
	ret++;
    }
    FUNC1(&data);
    return ret;
}