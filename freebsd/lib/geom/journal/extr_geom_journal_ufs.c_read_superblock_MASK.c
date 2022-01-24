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
struct fs {int dummy; } ;
struct uufsd {struct fs d_fs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uufsd*) ; 
 int FUNC1 (struct uufsd*,char const*) ; 

__attribute__((used)) static struct fs *
FUNC2(const char *prov)
{
	static struct uufsd disk;
	struct fs *fs;

	if (FUNC1(&disk, prov) == -1)
		return (NULL);
	fs = &disk.d_fs;
	FUNC0(&disk);
	return (fs);
}