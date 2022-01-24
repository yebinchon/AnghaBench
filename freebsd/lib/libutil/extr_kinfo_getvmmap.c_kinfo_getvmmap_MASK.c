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
struct kinfo_vmentry {scalar_t__ kve_structsize; } ;
typedef  int pid_t ;

/* Variables and functions */
 int CTL_KERN ; 
 int KERN_PROC ; 
 int KERN_PROC_VMMAP ; 
 struct kinfo_vmentry* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct kinfo_vmentry*,struct kinfo_vmentry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int FUNC5 (int*,int /*<<< orphan*/ ,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct kinfo_vmentry *
FUNC6(pid_t pid, int *cntp)
{
	int mib[4];
	int error;
	int cnt;
	size_t len;
	char *buf, *bp, *eb;
	struct kinfo_vmentry *kiv, *kp, *kv;

	*cntp = 0;
	len = 0;
	mib[0] = CTL_KERN;
	mib[1] = KERN_PROC;
	mib[2] = KERN_PROC_VMMAP;
	mib[3] = pid;

	error = FUNC5(mib, FUNC4(mib), NULL, &len, NULL, 0);
	if (error)
		return (NULL);
	len = len * 4 / 3;
	buf = FUNC2(len);
	if (buf == NULL)
		return (NULL);
	error = FUNC5(mib, FUNC4(mib), buf, &len, NULL, 0);
	if (error) {
		FUNC1(buf);
		return (NULL);
	}
	/* Pass 1: count items */
	cnt = 0;
	bp = buf;
	eb = buf + len;
	while (bp < eb) {
		kv = (struct kinfo_vmentry *)(uintptr_t)bp;
		if (kv->kve_structsize == 0)
			break;
		bp += kv->kve_structsize;
		cnt++;
	}

	kiv = FUNC0(cnt, sizeof(*kiv));
	if (kiv == NULL) {
		FUNC1(buf);
		return (NULL);
	}
	bp = buf;
	eb = buf + len;
	kp = kiv;
	/* Pass 2: unpack */
	while (bp < eb) {
		kv = (struct kinfo_vmentry *)(uintptr_t)bp;
		if (kv->kve_structsize == 0)
			break;
		/* Copy/expand into pre-zeroed buffer */
		FUNC3(kp, kv, kv->kve_structsize);
		/* Advance to next packed record */
		bp += kv->kve_structsize;
		/* Set field size to fixed length, advance */
		kp->kve_structsize = sizeof(*kp);
		kp++;
	}
	FUNC1(buf);
	*cntp = cnt;
	return (kiv);	/* Caller must free() return value */
}