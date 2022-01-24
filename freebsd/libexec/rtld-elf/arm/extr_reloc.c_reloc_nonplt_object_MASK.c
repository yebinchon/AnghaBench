#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_14__ {int /*<<< orphan*/  r_info; scalar_t__ r_offset; } ;
struct TYPE_13__ {int st_value; } ;
struct TYPE_12__ {int tlsoffset; int /*<<< orphan*/  path; TYPE_1__* symtab; scalar_t__ strtab; int /*<<< orphan*/  tls_done; int /*<<< orphan*/  tlsindex; int /*<<< orphan*/  mainprog; scalar_t__ relocbase; } ;
struct TYPE_11__ {scalar_t__ st_name; } ;
typedef  int /*<<< orphan*/  SymCache ;
typedef  int /*<<< orphan*/  RtldLockState ;
typedef  TYPE_2__ Obj_Entry ;
typedef  TYPE_3__ Elf_Sym ;
typedef  TYPE_4__ Elf_Rel ;
typedef  int Elf_Addr ;
typedef  int Elf32_Sword ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
#define  R_ARM_ABS32 136 
#define  R_ARM_COPY 135 
#define  R_ARM_GLOB_DAT 134 
#define  R_ARM_NONE 133 
#define  R_ARM_PC24 132 
#define  R_ARM_RELATIVE 131 
#define  R_ARM_TLS_DTPMOD32 130 
#define  R_ARM_TLS_DTPOFF32 129 
#define  R_ARM_TLS_TPOFF32 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 TYPE_3__* FUNC7 (unsigned long,TYPE_2__*,TYPE_2__ const**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int*) ; 
 int /*<<< orphan*/  FUNC9 (int*,int) ; 

__attribute__((used)) static int
FUNC10(Obj_Entry *obj, const Elf_Rel *rel, SymCache *cache,
    int flags, RtldLockState *lockstate)
{
	Elf_Addr        *where;
	const Elf_Sym   *def;
	const Obj_Entry *defobj;
	Elf_Addr         tmp;
	unsigned long	 symnum;

	where = (Elf_Addr *)(obj->relocbase + rel->r_offset);
	symnum = FUNC0(rel->r_info);

	switch (FUNC1(rel->r_info)) {
	case R_ARM_NONE:
		break;
		
#if 1 /* XXX should not occur */
	case R_ARM_PC24: {	/* word32 S - P + A */
		Elf32_Sword addend;
		
		/*
		 * Extract addend and sign-extend if needed.
		 */
		addend = *where;
		if (addend & 0x00800000)
			addend |= 0xff000000;
		
		def = FUNC7(symnum, obj, &defobj, flags, cache,
		    lockstate);
		if (def == NULL)
				return -1;
			tmp = (Elf_Addr)obj->relocbase + def->st_value
			    - (Elf_Addr)where + (addend << 2);
			if ((tmp & 0xfe000000) != 0xfe000000 &&
			    (tmp & 0xfe000000) != 0) {
				FUNC4(
				"%s: R_ARM_PC24 relocation @ %p to %s failed "
				"(displacement %ld (%#lx) out of range)",
				    obj->path, where,
				    obj->strtab + obj->symtab[symnum].st_name,
				    (long) tmp, (long) tmp);
				return -1;
			}
			tmp >>= 2;
			*where = (*where & 0xff000000) | (tmp & 0x00ffffff);
			FUNC6("PC24 %s in %s --> %p @ %p in %s",
			    obj->strtab + obj->symtab[symnum].st_name,
			    obj->path, (void *)*where, where, defobj->path);
			break;
		}
#endif

		case R_ARM_ABS32:	/* word32 B + S + A */
		case R_ARM_GLOB_DAT:	/* word32 B + S */
			def = FUNC7(symnum, obj, &defobj, flags, cache,
			    lockstate);
			if (def == NULL)
				return -1;
			if (FUNC3(FUNC2(where))) {
				tmp =  *where + (Elf_Addr)defobj->relocbase +
				    def->st_value;
				*where = tmp;
			} else {
				tmp = FUNC8(where) +
				    (Elf_Addr)defobj->relocbase +
				    def->st_value;
				FUNC9(where, tmp);
			}
			FUNC6("ABS32/GLOB_DAT %s in %s --> %p @ %p in %s",
			    obj->strtab + obj->symtab[symnum].st_name,
			    obj->path, (void *)tmp, where, defobj->path);
			break;

		case R_ARM_RELATIVE:	/* word32 B + A */
			if (FUNC3(FUNC2(where))) {
				tmp = *where + (Elf_Addr)obj->relocbase;
				*where = tmp;
			} else {
				tmp = FUNC8(where) +
				    (Elf_Addr)obj->relocbase;
				FUNC9(where, tmp);
			}
			FUNC6("RELATIVE in %s --> %p", obj->path,
			    (void *)tmp);
			break;

		case R_ARM_COPY:
			/*
			 * These are deferred until all other relocations have
			 * been done.  All we do here is make sure that the
			 * COPY relocation is not in a shared library.  They
			 * are allowed only in executable files.
			 */
			if (!obj->mainprog) {
				FUNC4(
			"%s: Unexpected R_COPY relocation in shared library",
				    obj->path);
				return -1;
			}
			FUNC6("COPY (avoid in main)");
			break;

		case R_ARM_TLS_DTPOFF32:
			def = FUNC7(symnum, obj, &defobj, flags, cache,
			    lockstate);
			if (def == NULL)
				return -1;

			tmp = (Elf_Addr)(def->st_value);
			if (FUNC3(FUNC2(where)))
				*where = tmp;
			else
				FUNC9(where, tmp);

			FUNC6("TLS_DTPOFF32 %s in %s --> %p",
			    obj->strtab + obj->symtab[symnum].st_name,
			    obj->path, (void *)tmp);

			break;
		case R_ARM_TLS_DTPMOD32:
			def = FUNC7(symnum, obj, &defobj, flags, cache,
			    lockstate);
			if (def == NULL)
				return -1;

			tmp = (Elf_Addr)(defobj->tlsindex);
			if (FUNC3(FUNC2(where)))
				*where = tmp;
			else
				FUNC9(where, tmp);

			FUNC6("TLS_DTPMOD32 %s in %s --> %p",
			    obj->strtab + obj->symtab[symnum].st_name,
			    obj->path, (void *)tmp);

			break;

		case R_ARM_TLS_TPOFF32:
			def = FUNC7(symnum, obj, &defobj, flags, cache,
			    lockstate);
			if (def == NULL)
				return -1;

			if (!defobj->tls_done && !FUNC5(obj))
				return -1;

			tmp = (Elf_Addr)def->st_value + defobj->tlsoffset;
			if (FUNC3(FUNC2(where)))
				*where = tmp;
			else
				FUNC9(where, tmp);
			FUNC6("TLS_TPOFF32 %s in %s --> %p",
			    obj->strtab + obj->symtab[symnum].st_name,
			    obj->path, (void *)tmp);
			break;


		default:
			FUNC6("sym = %lu, type = %lu, offset = %p, "
			    "contents = %p, symbol = %s",
			    symnum, (u_long)FUNC1(rel->r_info),
			    (void *)rel->r_offset, (void *)FUNC8(where),
			    obj->strtab + obj->symtab[symnum].st_name);
			FUNC4("%s: Unsupported relocation type %ld "
			    "in non-PLT relocations\n",
			    obj->path, (u_long) FUNC1(rel->r_info));
			return -1;
	}
	return 0;
}