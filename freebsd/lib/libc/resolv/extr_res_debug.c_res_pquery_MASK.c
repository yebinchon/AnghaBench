#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  TYPE_1__* res_state ;
typedef  int /*<<< orphan*/  ns_msg ;
struct TYPE_4__ {int pfcode; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  RES_PRF_ADD ; 
 int /*<<< orphan*/  RES_PRF_ANS ; 
 int /*<<< orphan*/  RES_PRF_AUTH ; 
 int RES_PRF_HEAD1 ; 
 int RES_PRF_HEAD2 ; 
 int RES_PRF_HEADX ; 
 int /*<<< orphan*/  RES_PRF_QUES ; 
 char** _res_opcodes ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__* const,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  ns_f_aa ; 
 int /*<<< orphan*/  ns_f_ad ; 
 int /*<<< orphan*/  ns_f_cd ; 
 int /*<<< orphan*/  ns_f_opcode ; 
 int /*<<< orphan*/  ns_f_qr ; 
 int /*<<< orphan*/  ns_f_ra ; 
 int /*<<< orphan*/  ns_f_rcode ; 
 int /*<<< orphan*/  ns_f_rd ; 
 int /*<<< orphan*/  ns_f_tc ; 
 int /*<<< orphan*/  ns_f_z ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ns_s_an ; 
 int /*<<< orphan*/  ns_s_ar ; 
 int /*<<< orphan*/  ns_s_ns ; 
 int /*<<< orphan*/  ns_s_qd ; 
 char* FUNC6 (size_t) ; 
 char* FUNC7 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (char,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 

void
FUNC10(const res_state statp, const u_char *msg, int len, FILE *file) {
	ns_msg handle;
	int qdcount, ancount, nscount, arcount;
	u_int opcode, rcode, id;

	if (FUNC2(msg, len, &handle) < 0) {
		FUNC1(file, ";; ns_initparse: %s\n", FUNC9(errno));
		return;
	}
	opcode = FUNC4(handle, ns_f_opcode);
	rcode = FUNC4(handle, ns_f_rcode);
	id = FUNC5(handle);
	qdcount = FUNC3(handle, ns_s_qd);
	ancount = FUNC3(handle, ns_s_an);
	nscount = FUNC3(handle, ns_s_ns);
	arcount = FUNC3(handle, ns_s_ar);

	/*
	 * Print header fields.
	 */
	if ((!statp->pfcode) || (statp->pfcode & RES_PRF_HEADX) || rcode)
		FUNC1(file,
			";; ->>HEADER<<- opcode: %s, status: %s, id: %d\n",
			_res_opcodes[opcode], FUNC6(rcode), id);
	if ((!statp->pfcode) || (statp->pfcode & RES_PRF_HEADX))
		FUNC8(';', file);
	if ((!statp->pfcode) || (statp->pfcode & RES_PRF_HEAD2)) {
		FUNC1(file, "; flags:");
		if (FUNC4(handle, ns_f_qr))
			FUNC1(file, " qr");
		if (FUNC4(handle, ns_f_aa))
			FUNC1(file, " aa");
		if (FUNC4(handle, ns_f_tc))
			FUNC1(file, " tc");
		if (FUNC4(handle, ns_f_rd))
			FUNC1(file, " rd");
		if (FUNC4(handle, ns_f_ra))
			FUNC1(file, " ra");
		if (FUNC4(handle, ns_f_z))
			FUNC1(file, " ??");
		if (FUNC4(handle, ns_f_ad))
			FUNC1(file, " ad");
		if (FUNC4(handle, ns_f_cd))
			FUNC1(file, " cd");
	}
	if ((!statp->pfcode) || (statp->pfcode & RES_PRF_HEAD1)) {
		FUNC1(file, "; %s: %d",
			FUNC7(ns_s_qd, opcode), qdcount);
		FUNC1(file, ", %s: %d",
			FUNC7(ns_s_an, opcode), ancount);
		FUNC1(file, ", %s: %d",
			FUNC7(ns_s_ns, opcode), nscount);
		FUNC1(file, ", %s: %d",
			FUNC7(ns_s_ar, opcode), arcount);
	}
	if ((!statp->pfcode) || (statp->pfcode &
		(RES_PRF_HEADX | RES_PRF_HEAD2 | RES_PRF_HEAD1))) {
		FUNC8('\n',file);
	}
	/*
	 * Print the various sections.
	 */
	FUNC0(statp, &handle, ns_s_qd, RES_PRF_QUES, file);
	FUNC0(statp, &handle, ns_s_an, RES_PRF_ANS, file);
	FUNC0(statp, &handle, ns_s_ns, RES_PRF_AUTH, file);
	FUNC0(statp, &handle, ns_s_ar, RES_PRF_ADD, file);
	if (qdcount == 0 && ancount == 0 &&
	    nscount == 0 && arcount == 0)
		FUNC8('\n', file);
}