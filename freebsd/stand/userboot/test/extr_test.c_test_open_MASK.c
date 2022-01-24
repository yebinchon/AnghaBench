#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ fd; int /*<<< orphan*/  dir; } ;
struct TYPE_4__ {int /*<<< orphan*/  st_mode; } ;
struct test_file {int tf_isdir; TYPE_1__ tf_u; TYPE_2__ tf_stat; int /*<<< orphan*/  tf_size; } ;
struct stat {int /*<<< orphan*/  st_size; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PATH_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (struct test_file*) ; 
 int /*<<< orphan*/  host_base ; 
 struct test_file* FUNC3 (int) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (char*) ; 

int
FUNC10(void *arg, const char *filename, void **h_return)
{
	struct stat st;
	struct test_file *tf;
	char path[PATH_MAX];

	if (!host_base)
		return (ENOENT);

	FUNC8(path, host_base, PATH_MAX);
	if (path[FUNC9(path) - 1] == '/')
		path[FUNC9(path) - 1] = 0;
	FUNC7(path, filename, PATH_MAX);
	tf = FUNC3(sizeof(struct test_file));
	if (FUNC6(path, &tf->tf_stat) < 0) {
		FUNC2(tf);
		return (errno);
	}

	tf->tf_size = st.st_size;
	if (FUNC0(tf->tf_stat.st_mode)) {
		tf->tf_isdir = 1;
		tf->tf_u.dir = FUNC5(path);
		if (!tf->tf_u.dir)
			goto out;
                *h_return = tf;
		return (0);
	}
	if (FUNC1(tf->tf_stat.st_mode)) {
		tf->tf_isdir = 0;
		tf->tf_u.fd = FUNC4(path, O_RDONLY);
		if (tf->tf_u.fd < 0)
			goto out;
                *h_return = tf;
		return (0);
	}

out:
	FUNC2(tf);
	return (EINVAL);
}