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
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  TYPE_A 131 
#define  TYPE_E 130 
#define  TYPE_I 129 
#define  TYPE_L 128 
 char* FUNC0 (char*,size_t*,struct stat*) ; 
 int byte_count ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int /*<<< orphan*/  FUNC9 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*,size_t) ; 
 int transflag ; 
 int type ; 
 scalar_t__ urgflag ; 
 int FUNC12 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC13(FILE *instr, FILE *outstr)
{
    int cnt, bare_lfs = 0;
    static char *buf;
    static size_t bufsize;
    struct stat st;

    transflag = 1;

    buf = FUNC0 (buf, &bufsize,
			FUNC4(FUNC3(outstr), &st) >= 0 ? &st : NULL);
    if (buf == NULL) {
	transflag = 0;
	urgflag = 0;
	FUNC8(451, "Local resource failure: malloc");
	return -1;
    }

    switch (type) {

    case TYPE_I:
    case TYPE_L:
	while ((cnt = FUNC11(FUNC3(instr), buf, bufsize)) > 0) {
	    if (FUNC12(FUNC3(outstr), buf, cnt) != cnt)
		goto file_err;
	    byte_count += cnt;
	    if (urgflag && FUNC6())
		return (-1);
	}
	if (cnt < 0)
	    goto data_err;
	transflag = 0;
	urgflag = 0;
	return (0);

    case TYPE_E:
	FUNC10(553, "TYPE E not implemented.");
	transflag = 0;
	urgflag = 0;
	return (-1);

    case TYPE_A:
    {
	char *p, *q;
	int cr_flag = 0;
	while ((cnt = FUNC11(FUNC3(instr),
				buf + cr_flag,
				bufsize - cr_flag)) > 0){
	    if (urgflag && FUNC6())
		return (-1);
	    byte_count += cnt;
	    cnt += cr_flag;
	    cr_flag = 0;
	    for(p = buf, q = buf; p < buf + cnt;) {
		if(*p == '\n')
		    bare_lfs++;
		if(*p == '\r') {
		    if(p == buf + cnt - 1){
			cr_flag = 1;
			p++;
			continue;
		    }else if(p[1] == '\n'){
			*q++ = '\n';
			p += 2;
			continue;
		    }
		}
		*q++ = *p++;
	    }
	    FUNC5(buf, q - buf, 1, outstr);
	    if(cr_flag)
		buf[0] = '\r';
	}
	if(cr_flag)
	    FUNC9('\r', outstr);
	FUNC2(outstr);
	if (FUNC1(instr))
	    goto data_err;
	if (FUNC1(outstr))
	    goto file_err;
	transflag = 0;
	urgflag = 0;
	if (bare_lfs) {
	    FUNC7(226, "WARNING! %d bare linefeeds received in ASCII mode\r\n"
		   "    File may not have transferred correctly.\r\n",
		   bare_lfs);
	}
	return (0);
    }
    default:
	FUNC10(550, "Unimplemented TYPE %d in receive_data", type);
	transflag = 0;
	urgflag = 0;
	return (-1);
    }

data_err:
    transflag = 0;
    urgflag = 0;
    FUNC8(426, "Data Connection");
    return (-1);

file_err:
    transflag = 0;
    urgflag = 0;
    FUNC8(452, "Error writing file");
    return (-1);
}