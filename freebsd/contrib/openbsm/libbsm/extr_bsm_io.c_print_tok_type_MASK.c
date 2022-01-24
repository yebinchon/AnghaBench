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
typedef  int u_char ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  AUT_ARG32 168 
#define  AUT_ARG64 167 
#define  AUT_ATTR32 166 
#define  AUT_ATTR64 165 
#define  AUT_DATA 164 
#define  AUT_EXEC_ARGS 163 
#define  AUT_EXEC_ENV 162 
#define  AUT_EXIT 161 
#define  AUT_HEADER32 160 
#define  AUT_HEADER32_EX 159 
#define  AUT_HEADER64 158 
#define  AUT_HEADER64_EX 157 
#define  AUT_IN_ADDR 156 
#define  AUT_IN_ADDR_EX 155 
#define  AUT_IP 154 
#define  AUT_IPC 153 
#define  AUT_IPC_PERM 152 
#define  AUT_IPORT 151 
#define  AUT_NEWGROUPS 150 
#define  AUT_OPAQUE 149 
#define  AUT_OTHER_FILE32 148 
#define  AUT_PATH 147 
#define  AUT_PROCESS32 146 
#define  AUT_PROCESS32_EX 145 
#define  AUT_PROCESS64 144 
#define  AUT_PROCESS64_EX 143 
#define  AUT_RETURN32 142 
#define  AUT_RETURN64 141 
#define  AUT_SEQ 140 
#define  AUT_SOCKET 139 
#define  AUT_SOCKET_EX 138 
#define  AUT_SOCKINET128 137 
#define  AUT_SOCKINET32 136 
#define  AUT_SOCKUNIX 135 
#define  AUT_SUBJECT32 134 
#define  AUT_SUBJECT32_EX 133 
#define  AUT_SUBJECT64 132 
#define  AUT_SUBJECT64_EX 131 
#define  AUT_TEXT 130 
#define  AUT_TRAILER 129 
#define  AUT_ZONENAME 128 
 int AU_OFLAG_RAW ; 
 int AU_OFLAG_XML ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void
FUNC1(FILE *fp, u_char type, const char *tokname, int oflags)
{

	if (oflags & AU_OFLAG_XML) {
		switch(type) {
		case AUT_HEADER32:
			FUNC0(fp, "<record ");
			break;

		case AUT_HEADER32_EX:
			FUNC0(fp, "<record ");
			break;

		case AUT_HEADER64:
			FUNC0(fp, "<record ");
			break;

		case AUT_HEADER64_EX:
			FUNC0(fp, "<record ");
			break;

		case AUT_TRAILER:
			FUNC0(fp, "</record>");
			break;

		case AUT_ARG32:
			FUNC0(fp, "<argument ");
			break;

		case AUT_ARG64:
			FUNC0(fp, "<argument ");
			break;

		case AUT_ATTR32:
			FUNC0(fp, "<attribute ");
			break;

		case AUT_ATTR64:
			FUNC0(fp, "<attribute ");
			break;

		case AUT_EXIT:
			FUNC0(fp, "<exit ");
			break;

		case AUT_EXEC_ARGS:
			FUNC0(fp, "<exec_args>");
			break;

		case AUT_EXEC_ENV:
			FUNC0(fp, "<exec_env>");
			break;

		case AUT_OTHER_FILE32:
			FUNC0(fp, "<file ");
			break;

		case AUT_NEWGROUPS:
			FUNC0(fp, "<group>");
			break;

		case AUT_IN_ADDR:
			FUNC0(fp, "<ip_address>");
			break;

		case AUT_IN_ADDR_EX:
			FUNC0(fp, "<ip_address>");
			break;

		case AUT_IP:
			FUNC0(fp, "<ip ");
			break;

		case AUT_IPC:
			FUNC0(fp, "<IPC");
			break;

		case AUT_IPC_PERM:
			FUNC0(fp, "<IPC_perm ");
			break;

		case AUT_IPORT:
			FUNC0(fp, "<ip_port>");
			break;

		case AUT_OPAQUE:
			FUNC0(fp, "<opaque>");
			break;

		case AUT_PATH:
			FUNC0(fp, "<path>");
			break;

		case AUT_PROCESS32:
			FUNC0(fp, "<process ");
			break;

		case AUT_PROCESS32_EX:
			FUNC0(fp, "<process ");
			break;

		case AUT_PROCESS64:
			FUNC0(fp, "<process ");
			break;

		case AUT_PROCESS64_EX:
			FUNC0(fp, "<process ");
			break;

		case AUT_RETURN32:
			FUNC0(fp, "<return ");
			break;

		case AUT_RETURN64:
			FUNC0(fp, "<return ");
			break;

		case AUT_SEQ:
			FUNC0(fp, "<sequence ");
			break;

		case AUT_SOCKET:
			FUNC0(fp, "<socket ");
			break;

		case AUT_SOCKINET32:
			FUNC0(fp, "<socket-inet ");
			break;

		case AUT_SOCKUNIX:
			FUNC0(fp, "<socket-unix ");
			break;

		case AUT_SOCKINET128:
			FUNC0(fp, "<socket-inet6 ");
			break;

		case AUT_SUBJECT32:
			FUNC0(fp, "<subject ");
			break;

		case AUT_SUBJECT64:
			FUNC0(fp, "<subject ");
			break;

		case AUT_SUBJECT32_EX:
			FUNC0(fp, "<subject ");
			break;

		case AUT_SUBJECT64_EX:
			FUNC0(fp, "<subject ");
			break;

		case AUT_TEXT:
			FUNC0(fp, "<text>");
			break;

		case AUT_SOCKET_EX:
			FUNC0(fp, "<socket ");
			break;

		case AUT_DATA:
			FUNC0(fp, "<arbitrary ");
			break;

		case AUT_ZONENAME:
			FUNC0(fp, "<zone ");
			break;
		}
	} else {
		if (oflags & AU_OFLAG_RAW)
			FUNC0(fp, "%u", type);
		else
			FUNC0(fp, "%s", tokname);
	}
}