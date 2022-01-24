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
struct procstat_core {int dummy; } ;
struct kinfo_vmentry {scalar_t__ kve_structsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  PSC_TYPE_VMMAP ; 
 struct kinfo_vmentry* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct kinfo_vmentry*,struct kinfo_vmentry*,scalar_t__) ; 
 char* FUNC3 (struct procstat_core*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 

__attribute__((used)) static struct kinfo_vmentry *
FUNC4(struct procstat_core *core, int *cntp)
{
	int cnt;
	size_t len;
	char *buf, *bp, *eb;
	struct kinfo_vmentry *kiv, *kp, *kv;

	buf = FUNC3(core, PSC_TYPE_VMMAP, NULL, &len);
	if (buf == NULL)
		return (NULL);

	/*
	 * XXXMG: The code below is just copy&past from libutil.
	 * The code duplication can be avoided if libutil
	 * is extended to provide something like:
	 *   struct kinfo_vmentry *kinfo_getvmmap_from_buf(const char *buf,
	 *       size_t len, int *cntp);
	 */

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
		FUNC2(kp, kv, kv->kve_structsize);
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