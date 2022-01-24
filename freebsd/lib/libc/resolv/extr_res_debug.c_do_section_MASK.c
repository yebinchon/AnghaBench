#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
typedef  int u_int16_t ;
typedef  int u_char ;
typedef  TYPE_1__* res_state ;
typedef  scalar_t__ ns_sect ;
typedef  int /*<<< orphan*/  ns_rr ;
typedef  scalar_t__ ns_opcode ;
typedef  int /*<<< orphan*/  ns_msg ;
struct TYPE_3__ {int pfcode; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ENODEV ; 
 scalar_t__ ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int,int const*) ; 
 int NS_OPT_NSID ; 
 int RES_PRF_HEAD1 ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int const) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  ns_f_opcode ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int* FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ ns_s_ar ; 
 scalar_t__ ns_s_qd ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ ns_t_opt ; 
 char* FUNC16 (int) ; 
 char* FUNC17 (scalar_t__,scalar_t__) ; 
 char* FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (char,int /*<<< orphan*/ *) ; 
 char* FUNC20 (scalar_t__) ; 

__attribute__((used)) static void
FUNC21(const res_state statp,
	   ns_msg *handle, ns_sect section,
	   int pflag, FILE *file)
{
	int n, sflag, rrnum;
	static int buflen = 2048;
	char *buf;
	ns_opcode opcode;
	ns_rr rr;

	/*
	 * Print answer records.
	 */
	sflag = (statp->pfcode & pflag);
	if (statp->pfcode && !sflag)
		return;

	buf = FUNC6(buflen);
	if (buf == NULL) {
		FUNC1(file, ";; memory allocation failure\n");
		return;
	}

	opcode = (ns_opcode) FUNC7(*handle, ns_f_opcode);
	rrnum = 0;
	for (;;) {
		if (FUNC8(handle, section, rrnum, &rr)) {
			if (errno != ENODEV)
				FUNC1(file, ";; ns_parserr: %s\n",
					FUNC20(errno));
			else if (rrnum > 0 && sflag != 0 &&
				 (statp->pfcode & RES_PRF_HEAD1))
				FUNC19('\n', file);
			goto cleanup;
		}
		if (rrnum == 0 && sflag != 0 && (statp->pfcode & RES_PRF_HEAD1))
			FUNC1(file, ";; %s SECTION:\n",
				FUNC17(section, opcode));
		if (section == ns_s_qd)
			FUNC1(file, ";;\t%s, type = %s, class = %s\n",
				FUNC10(rr),
				FUNC18(FUNC14(rr)),
				FUNC16(FUNC9(rr)));
		else if (section == ns_s_ar && FUNC14(rr) == ns_t_opt) {
			u_int16_t optcode, optlen, rdatalen = FUNC12(rr);
			u_int32_t ttl = FUNC13(rr);

			FUNC1(file,
				"; EDNS: version: %u, udp=%u, flags=%04x\n",
				(ttl>>16)&0xff, FUNC9(rr), ttl&0xffff);

			while (rdatalen >= 4) {
				const u_char *cp = FUNC11(rr);
				int i;

				FUNC0(optcode, cp);
				FUNC0(optlen, cp);

				if (optcode == NS_OPT_NSID) {
					FUNC3("; NSID: ", file);
					if (optlen == 0) {
						FUNC3("; NSID\n", file);
					} else {
						FUNC3("; NSID: ", file);
						for (i = 0; i < optlen; i++)
							FUNC1(file, "%02x ",
								cp[i]);
						FUNC3(" (",file);
						for (i = 0; i < optlen; i++)
							FUNC1(file, "%c",
								FUNC5(cp[i])?
								cp[i] : '.');
						FUNC3(")\n", file);
					}
				} else {
					if (optlen == 0) {
						FUNC1(file, "; OPT=%u\n",
							optcode);
					} else {
						FUNC1(file, "; OPT=%u: ",
							optcode);
						for (i = 0; i < optlen; i++)
							FUNC1(file, "%02x ",
								cp[i]);
						FUNC3(" (",file);
						for (i = 0; i < optlen; i++)
							FUNC1(file, "%c",
								FUNC5(cp[i]) ?
									cp[i] : '.');
						FUNC3(")\n", file);
					}
				}
				rdatalen -= 4 + optlen;
			}
		} else {
			n = FUNC15(handle, &rr, NULL, NULL,
					buf, buflen);
			if (n < 0) {
				if (errno == ENOSPC) {
					FUNC4(buf);
					buf = NULL;
					if (buflen < 131072)
						buf = FUNC6(buflen += 1024);
					if (buf == NULL) {
						FUNC1(file,
					      ";; memory allocation failure\n");
					      return;
					}
					continue;
				}
				FUNC1(file, ";; ns_sprintrr: %s\n",
					FUNC20(errno));
				goto cleanup;
			}
			FUNC3(buf, file);
			FUNC2('\n', file);
		}
		rrnum++;
	}
 cleanup:
	if (buf != NULL)
		FUNC4(buf);
}