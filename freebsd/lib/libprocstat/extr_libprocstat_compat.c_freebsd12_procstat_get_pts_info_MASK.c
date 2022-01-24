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
struct ptsstat {int /*<<< orphan*/  devname; int /*<<< orphan*/  dev; } ;
struct procstat {int dummy; } ;
struct freebsd12_ptsstat {int /*<<< orphan*/  devname; int /*<<< orphan*/  dev; } ;
struct filestat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct procstat*,struct filestat*,struct ptsstat*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trunc_name ; 

int
FUNC4(struct procstat *procstat,
    struct filestat *fst, struct freebsd12_ptsstat *pts_compat, char *errbuf)
{
	struct ptsstat pts;
	int r;

	r = FUNC1(procstat, fst, &pts, errbuf);
	if (r != 0)
		return (r);
	pts_compat->dev = pts.dev;
	if (FUNC3(pts.devname) >= sizeof(pts_compat->devname))
		FUNC2(pts_compat->devname, trunc_name);
	else
		FUNC0(pts_compat->devname, pts.devname,
		    sizeof(pts_compat->devname));
	return (0);
}