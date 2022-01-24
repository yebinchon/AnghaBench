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

/* Variables and functions */
 int /*<<< orphan*/  AU_IPv4 ; 
 int /*<<< orphan*/  AU_IPv6 ; 
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ do_records ; 
 scalar_t__ do_tokens ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC17 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC18 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC20 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC21 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC22 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC23 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC24 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC25 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC26 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC27 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC28 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC29 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC30 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC31 (char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC34 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC35 (char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC38 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC39 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC40 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC41 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC42 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC43 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC44 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC45 (char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC48 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC49 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC50 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC51 (char const*,char*) ; 
 int FUNC52 (int,char**,char*) ; 
 scalar_t__ FUNC53 (char const*,int) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC54 () ; 

int
FUNC55(int argc, char *argv[])
{
	const char *directory;
	int ch;

	while ((ch = FUNC52(argc, argv, "rt")) != -1) {
		switch (ch) {
		case 'r':
			do_records++;
			break;

		case 't':
			do_tokens++;
			break;

		default:
			FUNC54();
		}
	}

	argc -= optind;
	argv += optind;

	if (argc != 1)
		FUNC54();

	directory = argv[0];

	if (FUNC53(directory, 0755) < 0 && errno != EEXIST)
		FUNC1(EX_OSERR, "mkdir: %s", directory);

	if (do_tokens) {
		FUNC11(directory, "file_token");
		FUNC49(directory, "trailer_token");
		FUNC14(directory, "header32_token");
		FUNC9(directory, "data_token");
		FUNC22(directory, "ipc_token");
		FUNC28(directory, "path_token");
		FUNC44(directory, "subject32_token");
		FUNC46(directory, "subject32ex_token",
		    AU_IPv4);
		FUNC46(directory, "subject32ex_token",
		    AU_IPv6);
		FUNC30(directory, "process32_token");
		FUNC32(directory, "process32ex_token",
		    AU_IPv4);
		FUNC32(directory, "process32ex_token",
		    AU_IPv6);
		FUNC34(directory, "process64_token");
		FUNC36(directory, "process64ex_token",
		    AU_IPv4);
		FUNC36(directory, "process64ex_token",
		    AU_IPv6);
		FUNC38(directory, "return32_token");
		FUNC48(directory, "text_token");
		FUNC26(directory, "opaque_token");
		FUNC16(directory, "in_addr_token");
		FUNC18(directory, "ip_token");
		FUNC24(directory, "iport_token");
		FUNC3(directory, "arg32_token");
		FUNC40(directory, "seq_token");
#if 0
		generate_attr_token(directory,  "attr_token");
		generate_ipc_perm_token(directory, "ipc_perm_token");
		generate_groups_token(directory, "groups_token");
		generate_attr32_token(directory, "attr32_token");
#endif
		FUNC51(directory, "zonename_token");
		FUNC42(directory, "socketex_token");
	}

	if (do_records) {
		FUNC10(directory, "file_record");
		FUNC8(directory, "data_record");
		FUNC21(directory, "ipc_record");
		FUNC27(directory, "path_record");
		FUNC43(directory, "subject32_record");
		FUNC45(directory, "subject32ex_record",
		    AU_IPv4);
		FUNC45(directory, "subject32ex_record",
		    AU_IPv6);
		FUNC29(directory, "process32_record");
		FUNC31(directory, "process32ex_record",
		    AU_IPv4);
		FUNC31(directory, "process32ex_record",
		    AU_IPv6);
		FUNC33(directory, "process64_record");
		FUNC35(directory, "process64ex_record",
		    AU_IPv4);
		FUNC35(directory, "process64ex_record",
		    AU_IPv6);
		FUNC37(directory, "return32_record");
		FUNC47(directory, "text_record");
		FUNC25(directory, "opaque_record");
		FUNC15(directory, "in_addr_record");
		FUNC17(directory, "ip_record");
		FUNC23(directory, "iport_record");
		FUNC2(directory, "arg32_record");
		FUNC39(directory, "seq_record");
#if 0
		generate_attr_record(directory,  "attr_record");
		generate_ipc_perm_record(directory, "ipc_perm_record");
		generate_groups_record(directory, "groups_record");
		generate_attr32_record(directory, "attr32_record");
#endif
		FUNC50(directory, "zonename_record");
		FUNC41(directory, "socketex_record");
		FUNC0(directory);
	}

	return (0);
}