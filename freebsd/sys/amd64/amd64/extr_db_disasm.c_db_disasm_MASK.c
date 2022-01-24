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
struct inst {int i_size; char* i_name; int i_mode; struct inst* i_extra; scalar_t__ i_has_modrm; } ;
struct i_addr {int dummy; } ;
typedef  int db_addr_t ;
typedef  int boolean_t ;

/* Variables and functions */
#define  A 163 
 int ADEP ; 
#define  BX 162 
 int BYTE ; 
#define  CL 161 
#define  CR 160 
 int /*<<< orphan*/  DB_STGY_ANY ; 
 int /*<<< orphan*/  DB_STGY_XTRN ; 
#define  DI 159 
#define  DR 158 
#define  DX 157 
#define  Db 156 
#define  Dl 155 
#define  E 154 
#define  EL 153 
 int ESC ; 
#define  Eb 152 
#define  Eind 151 
#define  El 150 
#define  Ew 149 
 int FALSE ; 
#define  I 148 
#define  Ib 147 
#define  Iba 146 
#define  Ibs 145 
#define  Ilq 144 
#define  Is 143 
#define  Iw 142 
 int LONG ; 
 int NONE ; 
#define  O 141 
#define  OS 140 
 int QUAD ; 
#define  R 139 
 int REX_R ; 
 int REX_W ; 
#define  Ri 138 
#define  Ril 137 
#define  Rq 136 
#define  Rv 135 
#define  Rw 134 
#define  S 133 
 int SDEP ; 
#define  SI 132 
#define  Si 131 
#define  TR 130 
 int TRUE ; 
 int WORD ; 
 struct inst* db_Grp1 ; 
 struct inst* db_Grp15 ; 
 char** db_Grp15b ; 
 struct inst* db_Grp2 ; 
 struct inst* db_Grp3 ; 
 struct inst* db_Grp4 ; 
 struct inst* db_Grp5 ; 
 struct inst* db_Grp6 ; 
 struct inst* db_Grp7 ; 
 struct inst* db_Grp8 ; 
 struct inst* db_Grp9 ; 
 struct inst* db_Grp9b ; 
 struct inst db_bad_inst ; 
 int FUNC0 (int,int,int,int,int,char const*) ; 
 struct inst const* db_inst_0f38fx ; 
 struct inst* db_inst_table ; 
 int* db_lengths ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,int,struct i_addr*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int,int,int,struct i_addr*) ; 
 int /*<<< orphan*/ *** db_reg ; 
 int /*<<< orphan*/ * db_seg_reg ; 
 int FUNC5 (int,int) ; 
 size_t FUNC6 (int,int) ; 
 size_t FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int,int) ; 
#define  o1 129 
#define  o3 128 
 scalar_t__ FUNC9 (char const*,char*) ; 

db_addr_t
FUNC10(db_addr_t loc, bool altfmt)
{
	int	inst;
	int	size;
	int	short_addr;
	const char *	seg;
	const struct inst *	ip;
	const char *	i_name;
	int	i_size;
	int	i_mode;
	int	rex = 0;
	int	regmodrm = 0;
	boolean_t	first;
	int	displ;
	int	prefix;
	int	rep, repne;
	int	imm;
	int	imm2;
	long	imm64;
	int	len;
	struct i_addr	address;

	FUNC8(inst, loc, 1, FALSE);
	short_addr = FALSE;
	size = LONG;
	seg = NULL;

	/*
	 * Get prefixes
	 */
	rep = FALSE;
	repne = FALSE;
	prefix = TRUE;
	do {
	    switch (inst) {
		case 0x66:		/* data16 */
		    size = WORD;
		    break;
		case 0x67:
		    short_addr = TRUE;
		    break;
		case 0x26:
		    seg = "%es";
		    break;
		case 0x36:
		    seg = "%ss";
		    break;
		case 0x2e:
		    seg = "%cs";
		    break;
		case 0x3e:
		    seg = "%ds";
		    break;
		case 0x64:
		    seg = "%fs";
		    break;
		case 0x65:
		    seg = "%gs";
		    break;
		case 0xf0:
		    FUNC2("lock ");
		    break;
		    /*
		     * XXX repne/repe are only actually valid for MOVS, CMPS,
		     * SCAS, LODS, STOS, INS, OUTS.
		     */
		case 0xf2:
		    repne = TRUE;
		    break;
		case 0xf3:
		    rep = TRUE;
		    break;
		default:
		    prefix = FALSE;
		    break;
	    }
	    if (inst >= 0x40 && inst < 0x50) {
		rex = inst;
		prefix = TRUE;
	    }
	    if (prefix) {
		FUNC8(inst, loc, 1, FALSE);
	    }
	} while (prefix);

	if (inst >= 0xd8 && inst <= 0xdf) {
	    loc = FUNC0(loc, inst, rex, short_addr, size, seg);
	    FUNC2("\n");
	    return (loc);
	}

	ip = &db_inst_table[inst];
	while (ip->i_size == ESC) {
	    FUNC8(inst, loc, 1, FALSE);
	    ip = ((const struct inst * const *)ip->i_extra)[inst>>4];
	    if (ip == NULL) {
		ip = &db_bad_inst;
	    }
	    else {
		ip = &ip[inst&0xf];
	    }
	}

	if (ip->i_has_modrm) {
	    FUNC8(regmodrm, loc, 1, FALSE);
	    loc = FUNC4(loc, short_addr, rex, regmodrm, &address);
	}

	i_name = ip->i_name;
	i_size = ip->i_size;
	i_mode = ip->i_mode;

	if (ip->i_extra == db_Grp9 && FUNC5(rex, regmodrm) == 3) {
	    ip = &db_Grp9b[FUNC6(rex, regmodrm)];
	    i_name = ip->i_name;
	    i_size = ip->i_size;
	    i_mode = ip->i_mode;
	}
	else if (ip->i_extra == db_Grp1 || ip->i_extra == db_Grp2 ||
	    ip->i_extra == db_Grp6 || ip->i_extra == db_Grp7 ||
	    ip->i_extra == db_Grp8 || ip->i_extra == db_Grp9 ||
	    ip->i_extra == db_Grp15) {
	    i_name = ((const char * const *)ip->i_extra)[FUNC6(rex, regmodrm)];
	}
	else if (ip->i_extra == db_Grp3) {
	    ip = ip->i_extra;
	    ip = &ip[FUNC6(rex, regmodrm)];
	    i_name = ip->i_name;
	    i_mode = ip->i_mode;
	}
	else if (ip->i_extra == db_Grp4 || ip->i_extra == db_Grp5) {
	    ip = ip->i_extra;
	    ip = &ip[FUNC6(rex, regmodrm)];
	    i_name = ip->i_name;
	    i_mode = ip->i_mode;
	    i_size = ip->i_size;
	}

	/* Special cases that don't fit well in the tables. */
	if (ip->i_extra == db_Grp7 && FUNC5(rex, regmodrm) == 3) {
		switch (regmodrm) {
		case 0xc1:
			i_name = "vmcall";
			i_size = NONE;
			i_mode = 0;
			break;
		case 0xc2:
			i_name = "vmlaunch";
			i_size = NONE;
			i_mode = 0;
			break;
		case 0xc3:
			i_name = "vmresume";
			i_size = NONE;
			i_mode = 0;
			break;
		case 0xc4:
			i_name = "vmxoff";
			i_size = NONE;
			i_mode = 0;
			break;
		case 0xc8:
			i_name = "monitor";
			i_size = NONE;
			i_mode = 0;			
			break;
		case 0xc9:
			i_name = "mwait";
			i_size = NONE;
			i_mode = 0;
			break;
		case 0xca:
			i_name = "clac";
			i_size = NONE;
			i_mode = 0;
			break;
		case 0xcb:
			i_name = "stac";
			i_size = NONE;
			i_mode = 0;
			break;
		case 0xd0:
			i_name = "xgetbv";
			i_size = NONE;
			i_mode = 0;
			break;
		case 0xd1:
			i_name = "xsetbv";
			i_size = NONE;
			i_mode = 0;
			break;
		case 0xd8:
			i_name = "vmrun";
			i_size = NONE;
			i_mode = 0;
			break;
		case 0xd9:
			i_name = "vmmcall";
			i_size = NONE;
			i_mode = 0;
			break;
		case 0xda:
			i_name = "vmload";
			i_size = NONE;
			i_mode = 0;
			break;
		case 0xdb:
			i_name = "vmsave";
			i_size = NONE;
			i_mode = 0;
			break;
		case 0xdc:
			i_name = "stgi";
			i_size = NONE;
			i_mode = 0;
			break;
		case 0xdd:
			i_name = "clgi";
			i_size = NONE;
			i_mode = 0;
			break;
		case 0xde:
			i_name = "skinit";
			i_size = NONE;
			i_mode = 0;
			break;
		case 0xdf:
			i_name = "invlpga";
			i_size = NONE;
			i_mode = 0;
			break;
		case 0xf8:
			i_name = "swapgs";
			i_size = NONE;
			i_mode = 0;
			break;
		case 0xf9:
			i_name = "rdtscp";
			i_size = NONE;
			i_mode = 0;
			break;
		}
	}
	if (ip->i_extra == db_Grp15 && FUNC5(rex, regmodrm) == 3) {
		i_name = db_Grp15b[FUNC6(rex, regmodrm)];
		i_size = NONE;
		i_mode = 0;
	}

	/* Handle instructions identified by mandatory prefixes. */
	if (rep == TRUE) {
	    if (inst == 0x90) {
		i_name = "pause";
		i_size = NONE;
		i_mode = 0;
		rep = FALSE;
	    } else if (ip->i_extra == db_Grp9 && FUNC5(rex, regmodrm) != 3 &&
		FUNC6(rex, regmodrm) == 0x6) {
		i_name = "vmxon";
		rep = FALSE;
	    }
	}
	/* N.B., likely highly incomplete. */
	if (repne) {
		if (ip == &db_inst_0f38fx[0] || ip == &db_inst_0f38fx[1])
			repne = FALSE;
	}
	if (size == WORD) {
	    if (ip->i_extra == db_Grp9 && FUNC5(rex, regmodrm) != 3 &&
		FUNC6(rex, regmodrm) == 0x6) {
		i_name = "vmclear";
	    }
	}
	if (rex & REX_W) {
	    if (FUNC9(i_name, "cwde") == 0)
		i_name = "cdqe";
	    else if (FUNC9(i_name, "cmpxchg8b") == 0)
		i_name = "cmpxchg16b";
	}

	if (rep == TRUE)
	    FUNC2("repe ");	/* XXX repe VS rep */
	if (repne == TRUE)
	    FUNC2("repne ");

	if (i_size == SDEP) {
	    if (size == LONG)
		FUNC2("%s", i_name);
	    else
		FUNC2("%s", (const char *)ip->i_extra);
	} else if (i_size == ADEP) {
	    if (short_addr == FALSE)
		FUNC2("%s", i_name);
	    else
		FUNC2("%s", (const char *)ip->i_extra);
	}
	else {
	    FUNC2("%s", i_name);
	    if ((inst >= 0x50 && inst <= 0x5f) || inst == 0x68 || inst == 0x6a) {
		i_size = NONE;
		FUNC2("q");
	    }
	    if (i_size != NONE) {
		if (i_size == BYTE) {
		    FUNC2("b");
		    size = BYTE;
		}
		else if (i_size == WORD) {
		    FUNC2("w");
		    size = WORD;
		}
		else if (size == WORD)
		    FUNC2("w");
		else {
		    if (rex & REX_W)
			FUNC2("q");
		    else
			FUNC2("l");
		}
	    }
	}
	FUNC2("\t");
	for (first = TRUE;
	     i_mode != 0;
	     i_mode >>= 8, first = FALSE)
	{
	    if (!first)
		FUNC2(",");

	    switch (i_mode & 0xFF) {

		case E:
		    FUNC1(seg, size, rex, &address);
		    break;

		case Eind:
		    FUNC2("*");
		    FUNC1(seg, size, rex, &address);
		    break;

		case El:
		    FUNC1(seg, (rex & REX_W) ? QUAD : LONG, rex, &address);
		    break;

		case EL:
		    FUNC1(seg, LONG, 0, &address);
		    break;

		case Ew:
		    FUNC1(seg, WORD, rex, &address);
		    break;

		case Eb:
		    FUNC1(seg, BYTE, rex, &address);
		    break;

		case R:
		    FUNC2("%s", db_reg[rex != 0 ? 1 : 0][(size == LONG && (rex & REX_W)) ? QUAD : size][FUNC6(rex, regmodrm)]);
		    break;

		case Rw:
		    FUNC2("%s", db_reg[rex != 0 ? 1 : 0][WORD][FUNC6(rex, regmodrm)]);
		    break;

		case Rq:
		    FUNC2("%s", db_reg[rex != 0 ? 1 : 0][QUAD][FUNC6(rex, regmodrm)]);
		    break;

		case Ri:
		    FUNC2("%s", db_reg[0][QUAD][FUNC7(rex, inst)]);
		    break;

		case Ril:
		    FUNC2("%s", db_reg[rex != 0 ? 1 : 0][(rex & REX_R) ? QUAD : LONG][FUNC7(rex, inst)]);
		    break;

	        case Rv:
		    FUNC2("%s", db_reg[rex != 0 ? 1 : 0][(size == LONG && (rex & REX_W)) ? QUAD : size][FUNC7(rex, regmodrm)]);
		    break;

		case S:
		    FUNC2("%s", db_seg_reg[FUNC6(rex, regmodrm)]);
		    break;

		case Si:
		    FUNC2("%s", db_seg_reg[FUNC6(rex, inst)]);
		    break;

		case A:
		    FUNC2("%s", db_reg[rex != 0 ? 1 : 0][size][0]);	/* acc */
		    break;

		case BX:
		    if (seg)
			FUNC2("%s:", seg);
		    FUNC2("(%s)", short_addr ? "%bx" : "%ebx");
		    break;

		case CL:
		    FUNC2("%%cl");
		    break;

		case DX:
		    FUNC2("%%dx");
		    break;

		case SI:
		    if (seg)
			FUNC2("%s:", seg);
		    FUNC2("(%s)", short_addr ? "%si" : "%rsi");
		    break;

		case DI:
		    FUNC2("%%es:(%s)", short_addr ? "%di" : "%rdi");
		    break;

		case CR:
		    FUNC2("%%cr%d", FUNC6(rex, regmodrm));
		    break;

		case DR:
		    FUNC2("%%dr%d", FUNC6(rex, regmodrm));
		    break;

		case TR:
		    FUNC2("%%tr%d", FUNC6(rex, regmodrm));
		    break;

		case I:
		    len = db_lengths[size];
		    FUNC8(imm, loc, len, FALSE);
		    FUNC2("$%#r", imm);
		    break;

		case Is:
		    len = db_lengths[(size == LONG && (rex & REX_W)) ? QUAD : size];
		    FUNC8(imm, loc, len, FALSE);
		    FUNC2("$%+#r", imm);
		    break;

		case Ib:
		    FUNC8(imm, loc, 1, FALSE);
		    FUNC2("$%#r", imm);
		    break;

		case Iba:
		    FUNC8(imm, loc, 1, FALSE);
		    if (imm != 0x0a)
			FUNC2("$%#r", imm);
		    break;

		case Ibs:
		    FUNC8(imm, loc, 1, TRUE);
		    if (size == WORD)
			imm &= 0xFFFF;
		    FUNC2("$%+#r", imm);
		    break;

		case Iw:
		    FUNC8(imm, loc, 2, FALSE);
		    FUNC2("$%#r", imm);
		    break;

		case Ilq:
		    len = db_lengths[rex & REX_W ? QUAD : LONG];
		    FUNC8(imm64, loc, len, FALSE);
		    FUNC2("$%#lr", imm64);
		    break;

		case O:
		    len = (short_addr ? 2 : 4);
		    FUNC8(displ, loc, len, FALSE);
		    if (seg)
			FUNC2("%s:%+#r",seg, displ);
		    else
			FUNC3((db_addr_t)displ, DB_STGY_ANY);
		    break;

		case Db:
		    FUNC8(displ, loc, 1, TRUE);
		    displ += loc;
		    if (size == WORD)
			displ &= 0xFFFF;
		    FUNC3((db_addr_t)displ, DB_STGY_XTRN);
		    break;

		case Dl:
		    len = db_lengths[(size == LONG && (rex & REX_W)) ? QUAD : size];
		    FUNC8(displ, loc, len, FALSE);
		    displ += loc;
		    if (size == WORD)
			displ &= 0xFFFF;
		    FUNC3((db_addr_t)displ, DB_STGY_XTRN);
		    break;

		case o1:
		    FUNC2("$1");
		    break;

		case o3:
		    FUNC2("$3");
		    break;

		case OS:
		    len = db_lengths[size];
		    FUNC8(imm, loc, len, FALSE);	/* offset */
		    FUNC8(imm2, loc, 2, FALSE);	/* segment */
		    FUNC2("$%#r,%#r", imm2, imm);
		    break;
	    }
	}
	FUNC2("\n");
	return (loc);
}