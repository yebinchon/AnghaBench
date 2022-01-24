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
struct kinfo_proc {int ki_structsize; } ;

/* Variables and functions */
 int CTL_KERN ; 
 int KERN_PROC ; 
 int KERN_PROC_PROC ; 
 int /*<<< orphan*/  FUNC0 (struct kinfo_proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct kinfo_proc*,size_t) ; 
 struct kinfo_proc* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 scalar_t__ FUNC4 (int*,int /*<<< orphan*/ ,struct kinfo_proc*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct kinfo_proc *
FUNC5(int *cntp)
{
	struct kinfo_proc *kipp;
	size_t len;
	int mib[3];

	mib[0] = CTL_KERN;
	mib[1] = KERN_PROC;
	mib[2] = KERN_PROC_PROC;

	len = 0;
	if (FUNC4(mib, FUNC3(mib), NULL, &len, NULL, 0) < 0)
		return (NULL);

	kipp = FUNC2(len);
	if (kipp == NULL)
		return (NULL);

	if (FUNC4(mib, FUNC3(mib), kipp, &len, NULL, 0) < 0)
		goto bad;
	if (len % sizeof(*kipp) != 0)
		goto bad;
	if (kipp->ki_structsize != sizeof(*kipp))
		goto bad;
	*cntp = len / sizeof(*kipp);
	FUNC1(kipp, len / sizeof(*kipp));
	return (kipp);
bad:
	*cntp = 0;
	FUNC0(kipp);
	return (NULL);
}