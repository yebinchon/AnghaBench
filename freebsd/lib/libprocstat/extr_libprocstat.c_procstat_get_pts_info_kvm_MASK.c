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
struct tty {int /*<<< orphan*/  t_dev; } ;
struct ptsstat {int /*<<< orphan*/  devname; int /*<<< orphan*/  dev; void* fs_typedep; } ;
struct filestat {int /*<<< orphan*/  devname; int /*<<< orphan*/  dev; void* fs_typedep; } ;
typedef  struct ptsstat kvm_t ;

/* Variables and functions */
 int /*<<< orphan*/  _POSIX2_LINE_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct ptsstat*) ; 
 int /*<<< orphan*/  FUNC1 (struct ptsstat*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ptsstat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ptsstat*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ptsstat*,unsigned long,struct tty*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,void*) ; 

__attribute__((used)) static int
FUNC7(kvm_t *kd, struct filestat *fst,
    struct ptsstat *pts, char *errbuf)
{
	struct tty tty;
	void *ttyp;

	FUNC0(kd);
	FUNC0(pts);
	FUNC0(fst);
	FUNC1(pts, sizeof(*pts));
	ttyp = fst->fs_typedep;
	if (ttyp == NULL)
		goto fail;
	if (!FUNC4(kd, (unsigned long)ttyp, &tty, sizeof(struct tty))) {
		FUNC6("can't read tty at %p", (void *)ttyp);
		goto fail;
	}
	pts->dev = FUNC2(kd, tty.t_dev);
	(void)FUNC3(kd, tty.t_dev, pts->devname);
	return (0);

fail:
	if (errbuf != NULL)
		FUNC5(errbuf, _POSIX2_LINE_MAX, "error");
	return (1);
}