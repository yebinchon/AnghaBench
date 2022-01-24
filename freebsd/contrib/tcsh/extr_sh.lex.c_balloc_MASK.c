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
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int fblocks ; 
 int /*<<< orphan*/ ** fbuf ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static void
FUNC3(int buf)
{
    Char **nfbuf;

    while (buf >= fblocks) {
	nfbuf = FUNC1(fblocks + 2, sizeof(Char **));
	if (fbuf) {
	    (void) FUNC0(nfbuf, fbuf);
	    FUNC2(fbuf);
	}
	fbuf = nfbuf;
	fbuf[fblocks] = FUNC1(BUFSIZE, sizeof(Char));
	fblocks++;
    }
}