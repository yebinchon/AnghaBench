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
typedef  int /*<<< orphan*/  seq_t ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  SCR ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  M_ERR ; 
 int SEQ_NOOVERWRITE ; 
 int SEQ_SCREEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int) ; 
 scalar_t__ FUNC9 (char*) ; 
 char* FUNC10 (char*) ; 

__attribute__((used)) static int
FUNC11(SCR *sp, seq_t stype, CHAR_T *from, size_t flen, CHAR_T *to, size_t tlen)
{
	size_t nlen;
	char *p;
	char name[64];
	CHAR_T keyname[64];
	CHAR_T ts[20];
	CHAR_T *wp;
	size_t wlen;

	(void)FUNC8(name, sizeof(name), "kf%d", 
			(int)FUNC5(from+1,NULL,10));
	if ((p = FUNC10(name)) == NULL ||
	    p == (char *)-1 || FUNC9(p) == 0)
		p = NULL;
	if (p == NULL) {
		FUNC6(sp, M_ERR, from, "233|This terminal has no %s key");
		return (1);
	}

	nlen = FUNC4(keyname,
	    FUNC3(keyname), FUNC1("function key %d"), 
			(int)FUNC5(from+1,NULL,10));
	FUNC0(sp, p, FUNC9(p), wp, wlen);
	FUNC2(ts, wp, wlen);
	return (FUNC7(sp, keyname, nlen,
	    ts, FUNC9(p), to, tlen, stype, SEQ_NOOVERWRITE | SEQ_SCREEN));
}