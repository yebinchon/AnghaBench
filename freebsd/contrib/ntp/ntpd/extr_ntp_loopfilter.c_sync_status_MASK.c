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
typedef  int /*<<< orphan*/  tbuf ;
typedef  int /*<<< orphan*/  obuf ;
typedef  int /*<<< orphan*/  nbuf ;

/* Variables and functions */
 int /*<<< orphan*/  EVNT_KERN ; 
 int /*<<< orphan*/  STA_FMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,...) ; 

__attribute__((used)) static void
FUNC3(const char *what, int ostatus, int nstatus)
{
	char obuf[256], nbuf[256], tbuf[1024];
#if defined(USE_SNPRINTB) && defined (STA_FMT)
	snprintb(obuf, sizeof(obuf), STA_FMT, ostatus);
	snprintb(nbuf, sizeof(nbuf), STA_FMT, nstatus);
#else
	FUNC2(obuf, sizeof(obuf), "%04x", ostatus);
	FUNC2(nbuf, sizeof(nbuf), "%04x", nstatus);
#endif
	FUNC2(tbuf, sizeof(tbuf), "%s status: %s -> %s", what, obuf, nbuf);
	FUNC0(EVNT_KERN, NULL, tbuf);
}