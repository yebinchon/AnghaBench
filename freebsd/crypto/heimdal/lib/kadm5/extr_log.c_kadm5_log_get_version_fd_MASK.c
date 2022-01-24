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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int /*<<< orphan*/  kadm5_ret_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kadm5_ret_t
FUNC5 (int fd,
			  uint32_t *ver)
{
    int ret;
    krb5_storage *sp;
    int32_t old_version;

    ret = FUNC4 (fd, 0, SEEK_END);
    if(ret < 0)
	return errno;
    if(ret == 0) {
	*ver = 0;
	return 0;
    }
    sp = FUNC2 (fd);
    FUNC3(sp, -4, SEEK_CUR);
    FUNC0 (sp, &old_version);
    *ver = old_version;
    FUNC1(sp);
    FUNC4 (fd, 0, SEEK_END);
    return 0;
}