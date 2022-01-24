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
struct opaque_auth {int /*<<< orphan*/  data; int /*<<< orphan*/  flavor; } ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  scalar_t__ krb5_error_code ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static krb5_error_code
FUNC2(krb5_storage *msg, struct opaque_auth *ao)
{
    krb5_error_code ret;
    ret = FUNC0(msg, &ao->flavor);
    if (ret) return ret;
    ret = FUNC1(msg, &ao->data);
    return ret;
}