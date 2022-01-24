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
struct gl_file {char* name; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {int /*<<< orphan*/  st_mode; } ;
typedef  TYPE_1__ __gl_stat_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ENOENT ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  S_IFDIR ; 
 size_t FUNC1 (struct gl_file*) ; 
 struct gl_file* a ; 
 struct gl_file* b ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char const*) ; 

__attribute__((used)) static int
FUNC5(const char *name , __gl_stat_t *st)
{
	char buf[MAXPATHLEN];
	FUNC4(buf, sizeof(buf), name);
	FUNC2(st, 0, sizeof(*st));

	if (FUNC3(buf, "a") == 0 || FUNC3(buf, "a/b") == 0) {
		st->st_mode |= S_IFDIR;
		return 0;
	}

	if (buf[0] == 'a' && buf[1] == '/') {
		struct gl_file *f;
		size_t offs, count;

		if (buf[2] == 'b' && buf[3] == '/') {
			offs = 4;
			count = FUNC1(b);
			f = b;
		} else {
			offs = 2;
			count = FUNC1(a);
			f = a;
		}
		
		for (size_t i = 0; i < count; i++)
			if (FUNC3(f[i].name, buf + offs) == 0)
				return 0;
	}
	FUNC0(("stat %s %d\n", buf, st->st_mode));
	errno = ENOENT;
	return -1;
}