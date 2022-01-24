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
struct fs {int /*<<< orphan*/  fs_size; } ;
typedef  int off_t ;

/* Variables and functions */
 int DEV_BSIZE ; 
 int FUNC0 (struct fs*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*) ; 
 struct fs* FUNC2 (char const*) ; 

int
FUNC3(const char *prov)
{
	struct fs *fs;
	off_t psize, fssize;

	fs = FUNC2(prov);
	if (fs == NULL)
		return (0);
	/* Provider size in 512 bytes blocks. */
	psize = FUNC1(prov) / DEV_BSIZE;
	/* File system size in 512 bytes blocks. */
	fssize = FUNC0(fs, fs->fs_size);
	return (psize <= fssize);
}