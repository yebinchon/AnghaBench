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
typedef  int /*<<< orphan*/  u_char ;
struct g_bde_key {int* lsector; scalar_t__ sectorsize; } ;
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 (int,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void
FUNC7(struct g_bde_key *gl, int dfd , int key)
{
	int i;
	u_char *sbuf;
	off_t offset, offset2;

	sbuf = FUNC3(gl->sectorsize);
	FUNC4(sbuf, 0, gl->sectorsize);
	offset = (gl->lsector[key] & ~(gl->sectorsize - 1));
	offset2 = FUNC2(dfd, offset, SEEK_SET);
	if (offset2 != offset)
		FUNC0(1, "lseek");
	i = FUNC6(dfd, sbuf, gl->sectorsize);
	FUNC1(sbuf);
	if (i != (int)gl->sectorsize)
		FUNC0(1, "write");
	FUNC5("Nuked key %d\n", 1 + key);
}