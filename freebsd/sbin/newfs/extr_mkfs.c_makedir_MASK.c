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
struct direct {int d_reclen; } ;

/* Variables and functions */
 int DIRBLKSIZ ; 
 int FUNC0 (int /*<<< orphan*/ ,struct direct*) ; 
 char* iobuf ; 
 int /*<<< orphan*/  FUNC1 (char*,struct direct*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

int
FUNC3(struct direct *protodir, int entries)
{
	char *cp;
	int i, spcleft;

	spcleft = DIRBLKSIZ;
	FUNC2(iobuf, 0, DIRBLKSIZ);
	for (cp = iobuf, i = 0; i < entries - 1; i++) {
		protodir[i].d_reclen = FUNC0(0, &protodir[i]);
		FUNC1(cp, &protodir[i], protodir[i].d_reclen);
		cp += protodir[i].d_reclen;
		spcleft -= protodir[i].d_reclen;
	}
	protodir[i].d_reclen = spcleft;
	FUNC1(cp, &protodir[i], FUNC0(0, &protodir[i]));
	return (DIRBLKSIZ);
}