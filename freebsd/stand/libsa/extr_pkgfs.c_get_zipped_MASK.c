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
struct TYPE_2__ {size_t avail_out; int avail_in; int /*<<< orphan*/  next_in; void* next_out; } ;
struct package {size_t pkg_ofs; TYPE_1__ pkg_zs; int /*<<< orphan*/  pkg_buf; int /*<<< orphan*/  pkg_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  PKG_BUFSIZE ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 int /*<<< orphan*/  Z_SYNC_FLUSH ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct package *pkg, void *buf, size_t bufsz)
{
	int c;

	pkg->pkg_zs.next_out = buf;
	pkg->pkg_zs.avail_out = bufsz;

	while (pkg->pkg_zs.avail_out) {
		if (pkg->pkg_zs.avail_in == 0) {
			c = FUNC1(pkg->pkg_fd, pkg->pkg_buf, PKG_BUFSIZE);
			if (c <= 0) {
				errno = EIO;
				return (-1);
			}
			pkg->pkg_zs.avail_in = c;
			pkg->pkg_zs.next_in = pkg->pkg_buf;
		}

		c = FUNC0(&pkg->pkg_zs, Z_SYNC_FLUSH);
		if (c != Z_OK && c != Z_STREAM_END) {
			errno = EIO;
			return (-1);
		}
	}

	pkg->pkg_ofs += bufsz;
	return (0);
}