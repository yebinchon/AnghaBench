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
struct TYPE_4__ {int length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ krb5_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC6(krb5_storage *sp, char **str)
{
    krb5_data c;
    *str = NULL;
    FUNC0(FUNC5(sp, &c));
    if (c.length) {
	*str = FUNC3(c.length + 1);
	FUNC1(*str != NULL);
	FUNC4(*str, c.data, c.length);
	(*str)[c.length] = '\0';
    }
    FUNC2(&c);
    return 0;
}