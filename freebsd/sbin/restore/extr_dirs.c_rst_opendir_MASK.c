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
struct inotab {int /*<<< orphan*/  t_seekpt; } ;
typedef  int /*<<< orphan*/  ino_t ;
typedef  void RST_DIR ;

/* Variables and functions */
 int /*<<< orphan*/  dirfile ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 struct inotab* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void *
FUNC4(const char *name)
{
	struct inotab *itp;
	RST_DIR *dirp;
	ino_t ino;

	if ((ino = FUNC0(name)) > 0 &&
	    (itp = FUNC1(ino)) != NULL) {
		dirp = FUNC2(dirfile);
		FUNC3(dirp, itp->t_seekpt, itp->t_seekpt);
		return (dirp);
	}
	return (NULL);
}