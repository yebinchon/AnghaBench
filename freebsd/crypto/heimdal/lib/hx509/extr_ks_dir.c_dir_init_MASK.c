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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  hx509_lock ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  hx509_certs ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int ENOTDIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,char const*) ; 
 int FUNC3 (char const*,struct stat*) ; 
 void* FUNC4 (char const*) ; 

__attribute__((used)) static int
FUNC5(hx509_context context,
	 hx509_certs certs, void **data, int flags,
	 const char *residue, hx509_lock lock)
{
    *data = NULL;

    {
	struct stat sb;
	int ret;

	ret = FUNC3(residue, &sb);
	if (ret == -1) {
	    FUNC2(context, 0, ENOENT,
				   "No such file %s", residue);
	    return ENOENT;
	}

	if (!FUNC0(sb.st_mode)) {
	    FUNC2(context, 0, ENOTDIR,
				   "%s is not a directory", residue);
	    return ENOTDIR;
	}
    }

    *data = FUNC4(residue);
    if (*data == NULL) {
	FUNC1(context);
	return ENOMEM;
    }

    return 0;
}