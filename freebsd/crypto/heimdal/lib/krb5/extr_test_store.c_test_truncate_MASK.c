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
struct stat {int st_size; } ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC5(krb5_context context, krb5_storage *sp, int fd)
{
    struct stat sb;

    FUNC4(sp, "hej");
    FUNC3(sp, 2);

    if (FUNC0(fd, &sb) != 0)
	FUNC1(context, 1, errno, "fstat");
    if (sb.st_size != 2)
	FUNC2(context, 1, "length not 2");

    FUNC3(sp, 1024);

    if (FUNC0(fd, &sb) != 0)
	FUNC1(context, 1, errno, "fstat");
    if (sb.st_size != 1024)
	FUNC2(context, 1, "length not 2");
}