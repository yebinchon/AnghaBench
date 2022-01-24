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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int krb5_error_code ;
struct TYPE_4__ {scalar_t__ length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static krb5_error_code
FUNC5(krb5_context context, krb5_storage *sp, int fd)
{
    krb5_error_code ret;
    krb5_data data;
    ssize_t sret;

    ret = FUNC3(sp, &data);
    if (ret) {
	FUNC2(context, ret, FUNC0("malloc: out of memory", ""));
	return ret;
    }
    sret = FUNC4(fd, data.data, data.length);
    ret = (sret != (ssize_t)data.length);
    FUNC1(&data);
    if (ret) {
	ret = errno;
	FUNC2(context, ret,
			       FUNC0("Failed to write FILE credential data", ""));
	return ret;
    }
    return 0;
}