#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint_t ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  linker_ctf_t ;
struct TYPE_11__ {int /*<<< orphan*/  ctt_name; } ;
typedef  TYPE_1__ ctf_type_t ;
typedef  int /*<<< orphan*/  ctf_id_t ;
struct TYPE_12__ {scalar_t__ cd_err; size_t* cd_order; int cd_len; TYPE_3__* cd_nodes; } ;
typedef  TYPE_2__ ctf_decl_t ;
typedef  size_t ctf_decl_prec_t ;
struct TYPE_13__ {int cd_kind; int /*<<< orphan*/  cd_n; int /*<<< orphan*/  cd_type; } ;
typedef  TYPE_3__ ctf_decl_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTF_ERR ; 
#define  CTF_K_ARRAY 140 
#define  CTF_K_CONST 139 
#define  CTF_K_ENUM 138 
#define  CTF_K_FLOAT 137 
#define  CTF_K_FORWARD 136 
#define  CTF_K_FUNCTION 135 
#define  CTF_K_INTEGER 134 
#define  CTF_K_POINTER 133 
#define  CTF_K_RESTRICT 132 
#define  CTF_K_STRUCT 131 
#define  CTF_K_TYPEDEF 130 
#define  CTF_K_UNION 129 
#define  CTF_K_VOLATILE 128 
 size_t CTF_PREC_ARRAY ; 
 size_t CTF_PREC_BASE ; 
 size_t CTF_PREC_MAX ; 
 size_t CTF_PREC_POINTER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,...) ; 
 TYPE_3__* FUNC4 (TYPE_3__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC7(linker_ctf_t *lc, ctf_id_t type, char *buf, size_t len)
{
	ctf_decl_t cd;
	ctf_decl_node_t *cdp;
	ctf_decl_prec_t prec, lp, rp;
	int ptr, arr;
	uint_t k;

	if (lc == NULL && type == CTF_ERR)
		return (-1); /* simplify caller code by permitting CTF_ERR */

	FUNC1(&cd, buf, len);
	FUNC2(&cd, lc, type);

	if (cd.cd_err != 0) {
		FUNC0(&cd);
		return (-1);
	}

	/*
	 * If the type graph's order conflicts with lexical precedence order
	 * for pointers or arrays, then we need to surround the declarations at
	 * the corresponding lexical precedence with parentheses.  This can
	 * result in either a parenthesized pointer (*) as in int (*)() or
	 * int (*)[], or in a parenthesized pointer and array as in int (*[])().
	 */
	ptr = cd.cd_order[CTF_PREC_POINTER] > CTF_PREC_POINTER;
	arr = cd.cd_order[CTF_PREC_ARRAY] > CTF_PREC_ARRAY;

	rp = arr ? CTF_PREC_ARRAY : ptr ? CTF_PREC_POINTER : -1;
	lp = ptr ? CTF_PREC_POINTER : arr ? CTF_PREC_ARRAY : -1;

	k = CTF_K_POINTER; /* avoid leading whitespace (see below) */

	for (prec = CTF_PREC_BASE; prec < CTF_PREC_MAX; prec++) {
		for (cdp = FUNC4(&cd.cd_nodes[prec]);
		    cdp != NULL; cdp = FUNC4(cdp)) {

			const ctf_type_t *tp =
			    FUNC5(lc, cdp->cd_type);
			const char *name = FUNC6(lc, tp->ctt_name);

			if (k != CTF_K_POINTER && k != CTF_K_ARRAY)
				FUNC3(&cd, " ");

			if (lp == prec) {
				FUNC3(&cd, "(");
				lp = -1;
			}

			switch (cdp->cd_kind) {
			case CTF_K_INTEGER:
			case CTF_K_FLOAT:
			case CTF_K_TYPEDEF:
				FUNC3(&cd, "%s", name);
				break;
			case CTF_K_POINTER:
				FUNC3(&cd, "*");
				break;
			case CTF_K_ARRAY:
				FUNC3(&cd, "[%u]", cdp->cd_n);
				break;
			case CTF_K_FUNCTION:
				FUNC3(&cd, "()");
				break;
			case CTF_K_STRUCT:
			case CTF_K_FORWARD:
				FUNC3(&cd, "struct %s", name);
				break;
			case CTF_K_UNION:
				FUNC3(&cd, "union %s", name);
				break;
			case CTF_K_ENUM:
				FUNC3(&cd, "enum %s", name);
				break;
			case CTF_K_VOLATILE:
				FUNC3(&cd, "volatile");
				break;
			case CTF_K_CONST:
				FUNC3(&cd, "const");
				break;
			case CTF_K_RESTRICT:
				FUNC3(&cd, "restrict");
				break;
			}

			k = cdp->cd_kind;
		}

		if (rp == prec)
			FUNC3(&cd, ")");
	}

	FUNC0(&cd);
	return (cd.cd_len);
}