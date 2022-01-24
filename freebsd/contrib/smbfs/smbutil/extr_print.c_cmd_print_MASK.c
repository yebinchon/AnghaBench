#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* ioc_srvname; char* ioc_user; } ;
struct smb_ctx {TYPE_1__ ct_ssn; } ;
typedef  int /*<<< orphan*/  smbfh ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  fnamebuf ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EIO ; 
 int EOF ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SMBLK_CREATE ; 
 int /*<<< orphan*/  SMBL_SHARE ; 
 int /*<<< orphan*/  SMB_ST_PRINTER ; 
#define  STDPARAM_ARGS 128 
 int /*<<< orphan*/  STDPARAM_OPT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,char**,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (int,char*,int) ; 
 scalar_t__ FUNC7 (struct smb_ctx*,int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct smb_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct smb_ctx*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct smb_ctx*) ; 
 scalar_t__ FUNC11 (struct smb_ctx*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,...) ; 
 scalar_t__ smb_rc ; 
 int FUNC13 (struct smb_ctx*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct smb_ctx*,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct smb_ctx*,int /*<<< orphan*/ ,scalar_t__,int,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,char*,char*,char*) ; 
 scalar_t__ FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  FUNC18 () ; 

int
FUNC19(int argc, char *argv[])
{
	struct smb_ctx sctx, *ctx = &sctx;
	smbfh fh;
	off_t offset;
	char buf[8192];
	char *filename;
	char fnamebuf[256];
	int error, opt, i, file, count;

	if (argc < 2)
		FUNC18();
	if (FUNC7(ctx, argc, argv, SMBL_SHARE, SMBL_SHARE, SMB_ST_PRINTER) != 0)
		FUNC1(1);
	if (FUNC10(ctx) != 0)
		FUNC1(1);
	if (smb_rc)
		FUNC5(smb_rc);
	while ((opt = FUNC2(argc, argv, STDPARAM_OPT)) != EOF) {
		switch(opt){
		    case STDPARAM_ARGS:
			error = FUNC9(ctx, opt, optarg);
			if (error)
				FUNC1(1);
			break;
		    default:
			FUNC18();
			/*NOTREACHED*/
		}
	}
	if (optind + 1 >= argc)
		FUNC4();
	filename = argv[optind + 1];

	if (FUNC17(filename, "-") == 0) {
		file = 0;	/* stdin */
		filename = "stdin";
	} else {
		file = FUNC3(filename, O_RDONLY, 0);
		if (file < 0) {
			FUNC12("could not open file %s\n", errno, filename);
			FUNC1(1);
		}
	}

	if (FUNC11(ctx) != 0)
		FUNC1(1);
	error = FUNC8(ctx, SMBL_SHARE, SMBLK_CREATE);
	if (error) {
		FUNC12("could not login to server %s", error, ctx->ct_ssn.ioc_srvname);
		FUNC1(1);
	}
	FUNC16(fnamebuf, sizeof(fnamebuf), "%s_%s_%s", ctx->ct_ssn.ioc_user,
	    ctx->ct_ssn.ioc_srvname, filename);
	error = FUNC14(ctx, 0, 1, fnamebuf, &fh);
	if (error) {
		FUNC12("could not open print job", error);
		FUNC1(1);
	}
	offset = 0;
	error = 0;
	for(;;) {
		count = FUNC6(file, buf, sizeof(buf));
		if (count == 0)
			break;
		if (count < 0) {
			error = errno;
			FUNC12("error reading input file\n", error);
			break;
		}
		i = FUNC15(ctx, fh, offset, count, buf);
		if (i < 0) {
			error = errno;
			FUNC12("error writing spool file\n", error);
			break;
		}
		if (i != count) {
			FUNC12("incomplete write to spool file\n", 0);
			error = EIO;
			break;
		}
		offset += count;
	}
	FUNC0(file);
	error = FUNC13(ctx, fh);
	if (error)
		FUNC12("an error while closing spool file\n", error);
	return error ? 1 : 0;
}