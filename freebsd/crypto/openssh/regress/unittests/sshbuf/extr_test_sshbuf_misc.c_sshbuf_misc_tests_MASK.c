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
typedef  int /*<<< orphan*/  tmp ;
typedef  char sshbuf ;
typedef  char FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 size_t FUNC19 (char*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*) ; 
 char* FUNC23 (char*) ; 
 char* FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (char*,char*) ; 
 char* FUNC26 (char*) ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 
 int FUNC28 (char*) ; 
 int /*<<< orphan*/  FUNC29 (char*) ; 
 char* FUNC30 () ; 
 int /*<<< orphan*/ * FUNC31 (char*) ; 
 int /*<<< orphan*/  FUNC32 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC33 (char*,int) ; 
 int /*<<< orphan*/  FUNC34 (char*,int) ; 
 int /*<<< orphan*/  FUNC35 (char*,int,int /*<<< orphan*/ *) ; 
 int FUNC36 (char*) ; 
 char* FUNC37 (char*,char*) ; 
 char* FUNC38 () ; 

void
FUNC39(void)
{
	struct sshbuf *p1;
	char tmp[512], *p;
	FILE *out;
	size_t sz;

	FUNC13("sshbuf_dump");
	out = FUNC38();
	FUNC3(out, NULL);
	p1 = FUNC30();
	FUNC3(p1, NULL);
	FUNC0(FUNC33(p1, 0x12345678), 0);
	FUNC25(p1, out);
	FUNC18(out);
	FUNC21(out);
	sz = FUNC19(tmp, 1, sizeof(tmp), out);
	FUNC0(FUNC17(out), 0);
	FUNC1(FUNC16(out), 0);
	FUNC5(sz, 0);
	tmp[sz] = '\0';
	FUNC3(FUNC37(tmp, "12 34 56 78"), NULL);
	FUNC15(out);
	FUNC27(p1);
	FUNC12();

	FUNC13("sshbuf_dtob16");
	p1 = FUNC30();
	FUNC3(p1, NULL);
	FUNC0(FUNC33(p1, 0x12345678), 0);
	p = FUNC23(p1);
	FUNC3(p, NULL);
	FUNC6(p, "12345678");
	FUNC20(p);
	FUNC27(p1);
	FUNC12();

	FUNC13("sshbuf_dtob64 len 1");
	p1 = FUNC30();
	FUNC3(p1, NULL);
	FUNC0(FUNC34(p1, 0x11), 0);
	p = FUNC24(p1);
	FUNC3(p, NULL);
	FUNC6(p, "EQ==");
	FUNC20(p);
	FUNC27(p1);
	FUNC12();

	FUNC13("sshbuf_dtob64 len 2");
	p1 = FUNC30();
	FUNC3(p1, NULL);
	FUNC0(FUNC34(p1, 0x11), 0);
	FUNC0(FUNC34(p1, 0x22), 0);
	p = FUNC24(p1);
	FUNC3(p, NULL);
	FUNC6(p, "ESI=");
	FUNC20(p);
	FUNC27(p1);
	FUNC12();

	FUNC13("sshbuf_dtob64 len 3");
	p1 = FUNC30();
	FUNC3(p1, NULL);
	FUNC0(FUNC34(p1, 0x11), 0);
	FUNC0(FUNC34(p1, 0x22), 0);
	FUNC0(FUNC34(p1, 0x33), 0);
	p = FUNC24(p1);
	FUNC3(p, NULL);
	FUNC6(p, "ESIz");
	FUNC20(p);
	FUNC27(p1);
	FUNC12();

	FUNC13("sshbuf_dtob64 len 8191");
	p1 = FUNC30();
	FUNC3(p1, NULL);
	FUNC0(FUNC35(p1, 8192, NULL), 0);
	FUNC14(FUNC29(p1), 8192);
	p = FUNC24(p1);
	FUNC3(p, NULL);
	FUNC4(FUNC36(p), ((8191 + 2) / 3) * 4);
	FUNC20(p);
	FUNC27(p1);
	FUNC12();

	FUNC13("sshbuf_b64tod len 1");
	p1 = FUNC30();
	FUNC3(p1, NULL);
	FUNC0(FUNC22(p1, "0A=="), 0);
	FUNC4(FUNC28(p1), 1);
	FUNC9(*FUNC31(p1), 0xd0);
	FUNC27(p1);
	FUNC12();

	FUNC13("sshbuf_b64tod len 2");
	p1 = FUNC30();
	FUNC3(p1, NULL);
	FUNC0(FUNC22(p1, "0A8="), 0);
	FUNC4(FUNC28(p1), 2);
	FUNC7(FUNC10(FUNC31(p1)), 0xd00f);
	FUNC27(p1);
	FUNC12();

	FUNC13("sshbuf_b64tod len 4");
	p1 = FUNC30();
	FUNC3(p1, NULL);
	FUNC0(FUNC22(p1, "0A/QDw=="), 0);
	FUNC4(FUNC28(p1), 4);
	FUNC8(FUNC11(FUNC31(p1)), 0xd00fd00f);
	FUNC27(p1);
	FUNC12();

	FUNC13("sshbuf_dup_string");
	p1 = FUNC30();
	FUNC3(p1, NULL);
	/* Check empty buffer */
	p = FUNC26(p1);
	FUNC3(p, NULL);
	FUNC4(FUNC36(p), 0);
	FUNC20(p);
	/* Check buffer with string */
	FUNC0(FUNC32(p1, "quad1", FUNC36("quad1")), 0);
	p = FUNC26(p1);
	FUNC3(p, NULL);
	FUNC4(FUNC36(p), FUNC36("quad1"));
	FUNC6(p, "quad1");
	FUNC20(p);
	/* Check buffer with terminating nul */
	FUNC0(FUNC32(p1, "\0", 1), 0);
	p = FUNC26(p1);
	FUNC3(p, NULL);
	FUNC4(FUNC36(p), FUNC36("quad1"));
	FUNC6(p, "quad1");
	FUNC20(p);
	/* Check buffer with data after nul (expect failure) */
	FUNC0(FUNC32(p1, "quad2", FUNC36("quad2")), 0);
	p = FUNC26(p1);
	FUNC2(p, NULL);
	FUNC27(p1);
	FUNC12();
}