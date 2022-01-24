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
struct stat {int st_size; int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 scalar_t__ MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  TYPE_A 130 
#define  TYPE_I 129 
#define  TYPE_L 128 
 char* FUNC1 (char*,size_t*,struct stat*) ; 
 int byte_count ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,struct stat*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 int FUNC10 (int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int restart_point ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ *) ; 
 int FUNC14 (int,char*,int) ; 
 int transflag ; 
 int type ; 
 scalar_t__ urgflag ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static void
FUNC16(FILE *instr, FILE *outstr)
{
	int c, cnt, filefd, netfd;
	static char *buf;
	static size_t bufsize;

	transflag = 1;
	switch (type) {

	case TYPE_A:
	    while ((c = FUNC5(instr)) != EOF) {
		if (urgflag && FUNC6())
		    return;
		byte_count++;
		if(c == '\n')
		    FUNC13('\r', outstr);
		FUNC13(c, outstr);
	    }
	    FUNC12(outstr);
	    transflag = 0;
	    urgflag = 0;
	    if (FUNC2(instr))
		goto file_err;
	    if (FUNC2(outstr))
		goto data_err;
	    FUNC11(226, "Transfer complete.");
	    return;

	case TYPE_I:
	case TYPE_L:
#if 0 /* XXX handle urg flag */
#if defined(HAVE_MMAP) && !defined(NO_MMAP)
#ifndef MAP_FAILED
#define MAP_FAILED (-1)
#endif
	    {
		struct stat st;
		char *chunk;
		int in = fileno(instr);
		if(fstat(in, &st) == 0 && S_ISREG(st.st_mode)
		   && st.st_size > 0) {
		    /*
		     * mmap zero bytes has potential of loosing, don't do it.
		     */
		    chunk = mmap(0, st.st_size, PROT_READ,
				 MAP_SHARED, in, 0);
		    if((void *)chunk != (void *)MAP_FAILED) {
			cnt = st.st_size - restart_point;
			sec_write(fileno(outstr), chunk + restart_point, cnt);
			if (munmap(chunk, st.st_size) < 0)
			    warn ("munmap");
			sec_fflush(outstr);
			byte_count = cnt;
			transflag = 0;
			urgflag = 0;
		    }
		}
	    }
#endif
#endif
	if(transflag) {
	    struct stat st;

	    netfd = FUNC3(outstr);
	    filefd = FUNC3(instr);
	    buf = FUNC1 (buf, &bufsize,
				FUNC4(filefd, &st) >= 0 ? &st : NULL);
	    if (buf == NULL) {
		transflag = 0;
		urgflag = 0;
		FUNC9(451, "Local resource failure: malloc");
		return;
	    }
	    while ((cnt = FUNC10(filefd, buf, bufsize)) > 0 &&
		   FUNC14(netfd, buf, cnt) == cnt) {
		byte_count += cnt;
		if (urgflag && FUNC6())
		    return;
	    }
	    FUNC12(outstr); /* to end an encrypted stream */
	    transflag = 0;
	    urgflag = 0;
	    if (cnt != 0) {
		if (cnt < 0)
		    goto file_err;
		goto data_err;
	    }
	}
	FUNC11(226, "Transfer complete.");
	return;
	default:
	    transflag = 0;
	    urgflag = 0;
	    FUNC11(550, "Unimplemented TYPE %d in send_data", type);
	    return;
	}

data_err:
	transflag = 0;
	urgflag = 0;
	FUNC9(426, "Data connection");
	return;

file_err:
	transflag = 0;
	urgflag = 0;
	FUNC9(551, "Error on input file");
}