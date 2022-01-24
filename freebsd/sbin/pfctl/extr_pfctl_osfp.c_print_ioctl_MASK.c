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
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_2__ {char* fp_class_nm; char* fp_version_nm; char* fp_subtype_nm; } ;
struct pf_osfp_ioctl {int fp_flags; int fp_wsize; int fp_ttl; int fp_psize; int fp_optcnt; int fp_tcpopts; int fp_mss; int fp_wscale; TYPE_1__ fp_os; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int PF_OSFP_DF ; 
 int PF_OSFP_MSS_DC ; 
 int PF_OSFP_MSS_MOD ; 
 int PF_OSFP_PSIZE_DC ; 
 int PF_OSFP_PSIZE_MOD ; 
 int PF_OSFP_TCPOPT_BITS ; 
#define  PF_OSFP_TCPOPT_MSS 132 
#define  PF_OSFP_TCPOPT_NOP 131 
#define  PF_OSFP_TCPOPT_SACK 130 
#define  PF_OSFP_TCPOPT_TS 129 
#define  PF_OSFP_TCPOPT_WSCALE 128 
 int PF_OSFP_TS0 ; 
 int PF_OSFP_WSCALE_DC ; 
 int PF_OSFP_WSCALE_MOD ; 
 int PF_OSFP_WSIZE_DC ; 
 int PF_OSFP_WSIZE_MOD ; 
 int PF_OSFP_WSIZE_MSS ; 
 int PF_OSFP_WSIZE_MTU ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

const char *
FUNC2(struct pf_osfp_ioctl *fp)
{
	static char buf[1024];
	char tmp[32];
	int i, opt;

	*buf = '\0';
	if (fp->fp_flags & PF_OSFP_WSIZE_DC)
		FUNC1(buf, "*", sizeof(buf));
	else if (fp->fp_flags & PF_OSFP_WSIZE_MSS)
		FUNC1(buf, "S", sizeof(buf));
	else if (fp->fp_flags & PF_OSFP_WSIZE_MTU)
		FUNC1(buf, "T", sizeof(buf));
	else {
		if (fp->fp_flags & PF_OSFP_WSIZE_MOD)
			FUNC1(buf, "%", sizeof(buf));
		FUNC0(tmp, sizeof(tmp), "%d", fp->fp_wsize);
		FUNC1(buf, tmp, sizeof(buf));
	}
	FUNC1(buf, ":", sizeof(buf));

	FUNC0(tmp, sizeof(tmp), "%d", fp->fp_ttl);
	FUNC1(buf, tmp, sizeof(buf));
	FUNC1(buf, ":", sizeof(buf));

	if (fp->fp_flags & PF_OSFP_DF)
		FUNC1(buf, "1", sizeof(buf));
	else
		FUNC1(buf, "0", sizeof(buf));
	FUNC1(buf, ":", sizeof(buf));

	if (fp->fp_flags & PF_OSFP_PSIZE_DC)
		FUNC1(buf, "*", sizeof(buf));
	else {
		if (fp->fp_flags & PF_OSFP_PSIZE_MOD)
			FUNC1(buf, "%", sizeof(buf));
		FUNC0(tmp, sizeof(tmp), "%d", fp->fp_psize);
		FUNC1(buf, tmp, sizeof(buf));
	}
	FUNC1(buf, ":", sizeof(buf));

	if (fp->fp_optcnt == 0)
		FUNC1(buf, ".", sizeof(buf));
	for (i = fp->fp_optcnt - 1; i >= 0; i--) {
		opt = fp->fp_tcpopts >> (i * PF_OSFP_TCPOPT_BITS);
		opt &= (1 << PF_OSFP_TCPOPT_BITS) - 1;
		switch (opt) {
		case PF_OSFP_TCPOPT_NOP:
			FUNC1(buf, "N", sizeof(buf));
			break;
		case PF_OSFP_TCPOPT_SACK:
			FUNC1(buf, "S", sizeof(buf));
			break;
		case PF_OSFP_TCPOPT_TS:
			FUNC1(buf, "T", sizeof(buf));
			if (fp->fp_flags & PF_OSFP_TS0)
				FUNC1(buf, "0", sizeof(buf));
			break;
		case PF_OSFP_TCPOPT_MSS:
			FUNC1(buf, "M", sizeof(buf));
			if (fp->fp_flags & PF_OSFP_MSS_DC)
				FUNC1(buf, "*", sizeof(buf));
			else {
				if (fp->fp_flags & PF_OSFP_MSS_MOD)
					FUNC1(buf, "%", sizeof(buf));
				FUNC0(tmp, sizeof(tmp), "%d", fp->fp_mss);
				FUNC1(buf, tmp, sizeof(buf));
			}
			break;
		case PF_OSFP_TCPOPT_WSCALE:
			FUNC1(buf, "W", sizeof(buf));
			if (fp->fp_flags & PF_OSFP_WSCALE_DC)
				FUNC1(buf, "*", sizeof(buf));
			else {
				if (fp->fp_flags & PF_OSFP_WSCALE_MOD)
					FUNC1(buf, "%", sizeof(buf));
				FUNC0(tmp, sizeof(tmp), "%d", fp->fp_wscale);
				FUNC1(buf, tmp, sizeof(buf));
			}
			break;
		}

		if (i != 0)
			FUNC1(buf, ",", sizeof(buf));
	}
	FUNC1(buf, ":", sizeof(buf));

	FUNC1(buf, fp->fp_os.fp_class_nm, sizeof(buf));
	FUNC1(buf, ":", sizeof(buf));
	FUNC1(buf, fp->fp_os.fp_version_nm, sizeof(buf));
	FUNC1(buf, ":", sizeof(buf));
	FUNC1(buf, fp->fp_os.fp_subtype_nm, sizeof(buf));
	FUNC1(buf, ":", sizeof(buf));

	FUNC0(tmp, sizeof(tmp), "TcpOpts %d 0x%llx", fp->fp_optcnt,
	    (long long int)fp->fp_tcpopts);
	FUNC1(buf, tmp, sizeof(buf));

	return (buf);
}