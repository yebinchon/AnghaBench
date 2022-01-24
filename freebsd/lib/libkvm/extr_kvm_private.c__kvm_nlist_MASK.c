#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  symname ;
struct kvm_nlist {char* n_name; scalar_t__ n_type; void* n_value; } ;
struct kld_sym_lookup {int version; char* symname; void* symvalue; scalar_t__ symsize; } ;
typedef  int /*<<< orphan*/  lookup ;
struct TYPE_12__ {int /*<<< orphan*/  program; } ;
typedef  TYPE_1__ kvm_t ;

/* Variables and functions */
 char* DPCPU_SYMPREFIX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  KLDSYM_LOOKUP ; 
 scalar_t__ N_TEXT ; 
 scalar_t__ N_UNDF ; 
 char* VNET_SYMPREFIX ; 
 scalar_t__ FUNC1 (TYPE_1__*,int) ; 
 void* FUNC2 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 
 void* FUNC5 (TYPE_1__*,void*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kld_sym_lookup*) ; 
 int FUNC7 (TYPE_1__*,struct kvm_nlist*) ; 
 int FUNC8 (TYPE_1__*,struct kvm_nlist*,int,char*,void* (*) (TYPE_1__*,void*)) ; 
 int FUNC9 (char*,int,char*,char const*,char*) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 

int
FUNC11(kvm_t *kd, struct kvm_nlist *nl, int initialize)
{
	struct kvm_nlist *p;
	int nvalid;
	struct kld_sym_lookup lookup;
	int error;
	const char *prefix = "";
	char symname[1024]; /* XXX-BZ symbol name length limit? */
	int tried_vnet, tried_dpcpu;

	/*
	 * If we can't use the kld symbol lookup, revert to the
	 * slow library call.
	 */
	if (!FUNC0(kd)) {
		error = FUNC7(kd, nl);
		if (error <= 0)			/* Hard error or success. */
			return (error);

		if (FUNC4(kd, initialize))
			error = FUNC8(kd, nl, error,
			    VNET_SYMPREFIX, _kvm_vnet_validaddr);

		if (error > 0 && FUNC1(kd, initialize))
			error = FUNC8(kd, nl, error,
			    DPCPU_SYMPREFIX, _kvm_dpcpu_validaddr);

		return (error);
	}

	/*
	 * We can use the kld lookup syscall.  Go through each nlist entry
	 * and look it up with a kldsym(2) syscall.
	 */
	nvalid = 0;
	tried_vnet = 0;
	tried_dpcpu = 0;
again:
	for (p = nl; p->n_name && p->n_name[0]; ++p) {
		if (p->n_type != N_UNDF)
			continue;

		lookup.version = sizeof(lookup);
		lookup.symvalue = 0;
		lookup.symsize = 0;

		error = FUNC9(symname, sizeof(symname), "%s%s", prefix,
		    (prefix[0] != '\0' && p->n_name[0] == '_') ?
			(p->n_name + 1) : p->n_name);
		if (error < 0 || error >= (int)sizeof(symname))
			continue;
		lookup.symname = symname;
		if (lookup.symname[0] == '_')
			lookup.symname++;

		if (FUNC6(0, KLDSYM_LOOKUP, &lookup) != -1) {
			p->n_type = N_TEXT;
			if (FUNC4(kd, initialize) &&
			    FUNC10(prefix, VNET_SYMPREFIX) == 0)
				p->n_value =
				    FUNC5(kd, lookup.symvalue);
			else if (FUNC1(kd, initialize) &&
			    FUNC10(prefix, DPCPU_SYMPREFIX) == 0)
				p->n_value =
				    FUNC2(kd, lookup.symvalue);
			else
				p->n_value = lookup.symvalue;
			++nvalid;
			/* lookup.symsize */
		}
	}

	/*
	 * Check the number of entries that weren't found. If they exist,
	 * try again with a prefix for virtualized or DPCPU symbol names.
	 */
	error = ((p - nl) - nvalid);
	if (error && FUNC4(kd, initialize) && !tried_vnet) {
		tried_vnet = 1;
		prefix = VNET_SYMPREFIX;
		goto again;
	}
	if (error && FUNC1(kd, initialize) && !tried_dpcpu) {
		tried_dpcpu = 1;
		prefix = DPCPU_SYMPREFIX;
		goto again;
	}

	/*
	 * Return the number of entries that weren't found. If they exist,
	 * also fill internal error buffer.
	 */
	error = ((p - nl) - nvalid);
	if (error)
		FUNC3(kd, kd->program, "kvm_nlist");
	return (error);
}