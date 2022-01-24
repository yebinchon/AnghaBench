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
typedef  int krb5_error_code ;

/* Variables and functions */
 int /*<<< orphan*/  LOCK_UN ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 

krb5_error_code
FUNC1(int fd)
{
    int code;
    code = FUNC0(fd, LOCK_UN);
    if(code)
	return 4711 /* XXX */;
    return 0;
}