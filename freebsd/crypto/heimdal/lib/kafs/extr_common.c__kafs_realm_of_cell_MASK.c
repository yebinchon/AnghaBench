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
struct kafs_data {char* (* get_realm ) (struct kafs_data*,char*) ;} ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*,int) ; 
 int FUNC1 (struct kafs_data*,char const*,char**,int) ; 
 char* FUNC2 (struct kafs_data*,char*) ; 

int
FUNC3(struct kafs_data *data,
		    const char *cell, char **realm)
{
    char buf[1024];
    int ret;

    ret = FUNC1(data, cell, realm, 1);
    if (ret == 0)
	return ret;
    if (FUNC0(cell, buf, sizeof(buf)) == 0) {
	*realm = (*data->get_realm)(data, buf);
	if(*realm != NULL)
	    return 0;
    }
    return FUNC1(data, cell, realm, 0);
}