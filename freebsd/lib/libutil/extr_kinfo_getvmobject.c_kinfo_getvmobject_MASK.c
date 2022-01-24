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
struct kinfo_vmobject {int kvo_structsize; } ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 struct kinfo_vmobject* FUNC0 (int,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct kinfo_vmobject*,struct kinfo_vmobject*,int) ; 
 char* FUNC3 (char*,size_t) ; 
 scalar_t__ FUNC4 (char*,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct kinfo_vmobject *
FUNC5(int *cntp)
{
	char *buf, *bp, *ep;
	struct kinfo_vmobject *kvo, *list, *kp;
	size_t len;
	int cnt, i;

	buf = NULL;
	for (i = 0; i < 3; i++) {
		if (FUNC4("vm.objects", NULL, &len, NULL, 0) < 0) {
			FUNC1(buf);
			return (NULL);
		}
		buf = FUNC3(buf, len);
		if (buf == NULL)
			return (NULL);
		if (FUNC4("vm.objects", buf, &len, NULL, 0) == 0)
			goto unpack;
		if (errno != ENOMEM) {
			FUNC1(buf);
			return (NULL);
		}
	}
	FUNC1(buf);
	return (NULL);

unpack:
	/* Count items */
	cnt = 0;
	bp = buf;
	ep = buf + len;
	while (bp < ep) {
		kvo = (struct kinfo_vmobject *)(uintptr_t)bp;
		bp += kvo->kvo_structsize;
		cnt++;
	}

	list = FUNC0(cnt, sizeof(*list));
	if (list == NULL) {
		FUNC1(buf);
		return (NULL);
	}

	/* Unpack */
	bp = buf;
	kp = list;
	while (bp < ep) {
		kvo = (struct kinfo_vmobject *)(uintptr_t)bp;
		FUNC2(kp, kvo, kvo->kvo_structsize);
		bp += kvo->kvo_structsize;
		kp->kvo_structsize = sizeof(*kp);
		kp++;
	}
	FUNC1(buf);
	*cntp = cnt;
	return (list);
}