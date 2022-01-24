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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int krb5_error_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static int
FUNC4(krb5_storage *out, uint16_t type, int ucs2, char *s)
{
    krb5_error_code ret;
    FUNC0(FUNC1(out, type), 0);
    FUNC0(FUNC1(out, FUNC2(ucs2, s)), 0);
    FUNC0(FUNC3(out, ucs2, s), 0);
out:
    return ret;
}