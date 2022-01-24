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
struct stat {scalar_t__ st_dev; scalar_t__ st_ino; scalar_t__ st_nlink; } ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ EPERM ; 
 int O_BINARY ; 
 int O_RDWR ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ errno ; 
 int FUNC3 (int,struct stat*) ; 
 int FUNC4 (char const*,struct stat*) ; 
 int FUNC5 (char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int) ; 
 scalar_t__ FUNC8 (char const*) ; 

krb5_error_code
FUNC9(krb5_context context, const char *filename)
{
    int fd;
    struct stat sb1, sb2;
    int ret;

    ret = FUNC4 (filename, &sb1);
    if (ret < 0)
	return errno;

    fd = FUNC5(filename, O_RDWR | O_BINARY);
    if(fd < 0) {
	if(errno == ENOENT)
	    return 0;
	else
	    return errno;
    }
    FUNC6(fd);
    ret = FUNC0(context, fd, 1, filename);
    if (ret) {
	FUNC2(fd);
	return ret;
    }
    if (FUNC8(filename) < 0) {
	FUNC1(context, fd);
        FUNC2 (fd);
        return errno;
    }
    ret = FUNC3 (fd, &sb2);
    if (ret < 0) {
	FUNC1(context, fd);
	FUNC2 (fd);
	return errno;
    }

    /* check if someone was playing with symlinks */

    if (sb1.st_dev != sb2.st_dev || sb1.st_ino != sb2.st_ino) {
	FUNC1(context, fd);
	FUNC2 (fd);
	return EPERM;
    }

    /* there are still hard links to this file */

    if (sb2.st_nlink != 0) {
	FUNC1(context, fd);
        FUNC2 (fd);
        return 0;
    }

    ret = FUNC7 (fd);
    if (ret) {
	FUNC1(context, fd);
	FUNC2(fd);
	return ret;
    }
    ret = FUNC1(context, fd);
    FUNC2 (fd);
    return ret;
}