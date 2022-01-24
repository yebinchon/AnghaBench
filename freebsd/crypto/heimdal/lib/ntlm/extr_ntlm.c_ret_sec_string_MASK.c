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
struct sec_buffer {int /*<<< orphan*/  length; int /*<<< orphan*/  offset; } ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int /*<<< orphan*/  krb5_error_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char**) ; 

__attribute__((used)) static krb5_error_code
FUNC3(krb5_storage *sp, int ucs2, struct sec_buffer *desc, char **s)
{
    krb5_error_code ret = 0;
    FUNC0(FUNC1(sp, desc->offset, SEEK_SET), desc->offset);
    FUNC0(FUNC2(sp, ucs2, desc->length, s), 0);
 out:
    return ret;
}