#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_47__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
struct TYPE_47__ {int len; int* data; int id; } ;
typedef  TYPE_1__ tokenstr_t ;

/* Variables and functions */
#define  AUT_ARG32 170 
#define  AUT_ARG64 169 
#define  AUT_ATTR32 168 
#define  AUT_ATTR64 167 
#define  AUT_DATA 166 
#define  AUT_EXEC_ARGS 165 
#define  AUT_EXEC_ENV 164 
#define  AUT_EXIT 163 
#define  AUT_HEADER32 162 
#define  AUT_HEADER32_EX 161 
#define  AUT_HEADER64 160 
#define  AUT_HEADER64_EX 159 
#define  AUT_IN_ADDR 158 
#define  AUT_IN_ADDR_EX 157 
#define  AUT_IP 156 
#define  AUT_IPC 155 
#define  AUT_IPC_PERM 154 
#define  AUT_IPORT 153 
#define  AUT_NEWGROUPS 152 
#define  AUT_OPAQUE 151 
#define  AUT_OTHER_FILE32 150 
#define  AUT_PATH 149 
#define  AUT_PRIV 148 
#define  AUT_PROCESS32 147 
#define  AUT_PROCESS32_EX 146 
#define  AUT_PROCESS64 145 
#define  AUT_PROCESS64_EX 144 
#define  AUT_RETURN32 143 
#define  AUT_RETURN64 142 
#define  AUT_SEQ 141 
#define  AUT_SOCKET 140 
#define  AUT_SOCKET_EX 139 
#define  AUT_SOCKINET128 138 
#define  AUT_SOCKINET32 137 
#define  AUT_SOCKUNIX 136 
#define  AUT_SUBJECT32 135 
#define  AUT_SUBJECT32_EX 134 
#define  AUT_SUBJECT64 133 
#define  AUT_SUBJECT64_EX 132 
#define  AUT_TEXT 131 
#define  AUT_TRAILER 130 
#define  AUT_UPRIV 129 
#define  AUT_ZONENAME 128 
 int FUNC0 (TYPE_1__*,int*,int) ; 
 int FUNC1 (TYPE_1__*,int*,int) ; 
 int FUNC2 (TYPE_1__*,int*,int) ; 
 int FUNC3 (TYPE_1__*,int*,int) ; 
 int FUNC4 (TYPE_1__*,int*,int) ; 
 int FUNC5 (TYPE_1__*,int*,int) ; 
 int FUNC6 (TYPE_1__*,int*,int) ; 
 int FUNC7 (TYPE_1__*,int*,int) ; 
 int FUNC8 (TYPE_1__*,int*,int) ; 
 int FUNC9 (TYPE_1__*,int*,int) ; 
 int FUNC10 (TYPE_1__*,int*,int) ; 
 int FUNC11 (TYPE_1__*,int*,int) ; 
 int FUNC12 (TYPE_1__*,int*,int) ; 
 int FUNC13 (TYPE_1__*,int*,int) ; 
 int FUNC14 (TYPE_1__*,int*,int) ; 
 int FUNC15 (TYPE_1__*,int*,int) ; 
 int FUNC16 (TYPE_1__*,int*,int) ; 
 int FUNC17 (TYPE_1__*,int*,int) ; 
 int FUNC18 (TYPE_1__*,int*,int) ; 
 int FUNC19 (TYPE_1__*,int*,int) ; 
 int FUNC20 (TYPE_1__*,int*,int) ; 
 int FUNC21 (TYPE_1__*,int*,int) ; 
 int FUNC22 (TYPE_1__*,int*,int) ; 
 int FUNC23 (TYPE_1__*,int*,int) ; 
 int FUNC24 (TYPE_1__*,int*,int) ; 
 int FUNC25 (TYPE_1__*,int*,int) ; 
 int FUNC26 (TYPE_1__*,int*,int) ; 
 int FUNC27 (TYPE_1__*,int*,int) ; 
 int FUNC28 (TYPE_1__*,int*,int) ; 
 int FUNC29 (TYPE_1__*,int*,int) ; 
 int FUNC30 (TYPE_1__*,int*,int) ; 
 int FUNC31 (TYPE_1__*,int*,int) ; 
 int FUNC32 (TYPE_1__*,int*,int) ; 
 int FUNC33 (TYPE_1__*,int*,int) ; 
 int FUNC34 (TYPE_1__*,int*,int) ; 
 int FUNC35 (TYPE_1__*,int*,int) ; 
 int FUNC36 (TYPE_1__*,int*,int) ; 
 int FUNC37 (TYPE_1__*,int*,int) ; 
 int FUNC38 (TYPE_1__*,int*,int) ; 
 int FUNC39 (TYPE_1__*,int*,int) ; 
 int FUNC40 (TYPE_1__*,int*,int) ; 
 int FUNC41 (TYPE_1__*,int*,int) ; 
 int FUNC42 (TYPE_1__*,int*,int) ; 
 int FUNC43 (TYPE_1__*,int*,int) ; 

int
FUNC44(tokenstr_t *tok, u_char *buf, int len)
{

	if (len <= 0)
		return (-1);

	tok->len = 1;
	tok->data = buf;
	tok->id = *buf;

	switch(tok->id) {
	case AUT_HEADER32:
		return (FUNC10(tok, buf, len));

	case AUT_HEADER32_EX:
		return (FUNC9(tok, buf, len));

	case AUT_HEADER64:
		return (FUNC12(tok, buf, len));

	case AUT_HEADER64_EX:
		return (FUNC11(tok, buf, len));

	case AUT_TRAILER:
		return (FUNC42(tok, buf, len));

	case AUT_ARG32:
		return (FUNC1(tok, buf, len));

	case AUT_ARG64:
		return (FUNC2(tok, buf, len));

	case AUT_ATTR32:
		return (FUNC3(tok, buf, len));

	case AUT_ATTR64:
		return (FUNC4(tok, buf, len));

	case AUT_EXIT:
		return (FUNC7(tok, buf, len));

	case AUT_EXEC_ARGS:
		return (FUNC5(tok, buf, len));

	case AUT_EXEC_ENV:
		return (FUNC6(tok, buf, len));

	case AUT_OTHER_FILE32:
		return (FUNC8(tok, buf, len));

	case AUT_NEWGROUPS:
		return (FUNC20(tok, buf, len));

	case AUT_IN_ADDR:
		return (FUNC14(tok, buf, len));

	case AUT_IN_ADDR_EX:
		return (FUNC13(tok, buf, len));

	case AUT_IP:
		return (FUNC16(tok, buf, len));

	case AUT_IPC:
		return (FUNC17(tok, buf, len));

	case AUT_IPC_PERM:
		return (FUNC18(tok, buf, len));

	case AUT_IPORT:
		return (FUNC19(tok, buf, len));

	case AUT_OPAQUE:
		return (FUNC21(tok, buf, len));

	case AUT_PATH:
		return (FUNC22(tok, buf, len));

	case AUT_PROCESS32:
		return (FUNC25(tok, buf, len));

	case AUT_PROCESS32_EX:
		return (FUNC26(tok, buf, len));

	case AUT_PROCESS64:
		return (FUNC27(tok, buf, len));

	case AUT_PROCESS64_EX:
		return (FUNC28(tok, buf, len));

	case AUT_RETURN32:
		return (FUNC29(tok, buf, len));

	case AUT_RETURN64:
		return (FUNC30(tok, buf, len));

	case AUT_SEQ:
		return (FUNC31(tok, buf, len));

	case AUT_SOCKET:
		return (FUNC35(tok, buf, len));

	case AUT_SOCKINET32:
		return (FUNC33(tok, buf, len));

	case AUT_SOCKUNIX:
		return (FUNC34(tok, buf, len));

	case AUT_SOCKINET128:
		return (FUNC32(tok, buf, len));

	case AUT_SUBJECT32:
		return (FUNC37(tok, buf, len));

	case AUT_SUBJECT32_EX:
		return (FUNC38(tok, buf, len));

	case AUT_SUBJECT64:
		return (FUNC39(tok, buf, len));

	case AUT_SUBJECT64_EX:
		return (FUNC40(tok, buf, len));

	case AUT_TEXT:
		return (FUNC41(tok, buf, len));

	case AUT_SOCKET_EX:
		return (FUNC36(tok, buf, len));

	case AUT_DATA:
		return (FUNC0(tok, buf, len));

	case AUT_ZONENAME:
		return (FUNC43(tok, buf, len));

	case AUT_UPRIV:
		return (FUNC23(tok, buf, len));

	case AUT_PRIV:
		return (FUNC24(tok, buf, len));

	default:
		return (FUNC15(tok, buf, len));
	}
}