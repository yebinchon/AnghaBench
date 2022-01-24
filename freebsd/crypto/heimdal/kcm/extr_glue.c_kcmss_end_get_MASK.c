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
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_ccache ;
typedef  int /*<<< orphan*/ * krb5_cc_cursor ;

/* Variables and functions */

__attribute__((used)) static krb5_error_code
FUNC0 (krb5_context context,
	       krb5_ccache id,
	       krb5_cc_cursor *cursor)
{
    *cursor = NULL;
    return 0;
}