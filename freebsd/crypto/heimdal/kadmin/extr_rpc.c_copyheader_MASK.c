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
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int /*<<< orphan*/  krb5_error_code ;
struct TYPE_4__ {size_t length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ krb5_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static krb5_error_code
FUNC5(krb5_storage *sp, krb5_data *data)
{
    off_t off;
    ssize_t sret;

    off = FUNC4(sp, 0, SEEK_CUR);

    FUNC0(FUNC2(data, off));
    FUNC1((size_t)off == data->length);
    FUNC4(sp, 0, SEEK_SET);
    sret = FUNC3(sp, data->data, data->length);
    FUNC1(sret == off);
    FUNC1(off == FUNC4(sp, 0, SEEK_CUR));

    return 0;
}