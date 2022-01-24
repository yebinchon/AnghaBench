#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
struct TYPE_2__ {int /*<<< orphan*/  name; scalar_t__ ino; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_CUR ; 
 TYPE_1__ curfile ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ofile ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(char *buf, size_t size)
{

	if (FUNC2(ofile, size, SEEK_CUR) == -1) {
		FUNC1(stderr,
		    "seek error extracting inode %jd, name %d\nlseek: %d\n",
		    (uintmax_t)curfile.ino, curfile.name, FUNC3(errno));
		FUNC0(1);
	}
}