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
typedef  int /*<<< orphan*/  uid_t ;
struct kafs_data {int (* afslog_uid ) (struct kafs_data*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ;} ;

/* Variables and functions */
 int FUNC0 (struct kafs_data*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int
FUNC1(struct kafs_data *data, char **cells, int max, uid_t uid,
	     const char *homedir)
{
    int ret = 0;
    int i;
    for (i = 0; i < max; i++) {
        int er = (*data->afslog_uid)(data, cells[i], 0, uid, homedir);
	if (er)
	    ret = er;
    }
    return ret;
}