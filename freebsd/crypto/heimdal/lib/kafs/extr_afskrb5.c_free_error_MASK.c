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
struct krb5_kafs_data {int /*<<< orphan*/  context; } ;
struct kafs_data {struct krb5_kafs_data* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void
FUNC1(struct kafs_data *data, const char *str)
{
    struct krb5_kafs_data *d = data->data;
    FUNC0(d->context, str);
}