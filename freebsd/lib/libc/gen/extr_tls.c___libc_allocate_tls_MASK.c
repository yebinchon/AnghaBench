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
typedef  int Elf_Addr ;

/* Variables and functions */
 size_t FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* FUNC4 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (void*,void const*,int) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC7 (int,size_t) ; 
 void const* tls_init ; 
 int /*<<< orphan*/  tls_init_align ; 
 int tls_init_size ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int tls_static_space ; 

void *
FUNC9(void *oldtls, size_t tcbsize, size_t tcbalign)
{
	size_t size;
	char *tls;
	Elf_Addr *dtv;
	Elf_Addr segbase, oldsegbase;

	tcbalign = FUNC0(tcbalign, tls_init_align);
	size = FUNC7(tls_static_space, tcbalign);

	if (tcbsize < 2 * sizeof(Elf_Addr))
		tcbsize = 2 * sizeof(Elf_Addr);
	tls = FUNC4(size + tcbsize, tcbalign);
	if (tls == NULL) {
		FUNC8("__libc_allocate_tls: Out of memory.\n");
		FUNC3();
	}
	FUNC6(tls, 0, size + tcbsize);
	dtv = FUNC1(3 * sizeof(Elf_Addr));
	if (dtv == NULL) {
		FUNC8("__libc_allocate_tls: Out of memory.\n");
		FUNC3();
	}

	segbase = (Elf_Addr)(tls + size);
	((Elf_Addr*)segbase)[0] = segbase;
	((Elf_Addr*)segbase)[1] = (Elf_Addr) dtv;

	dtv[0] = 1;
	dtv[1] = 1;
	dtv[2] = segbase - tls_static_space;

	if (oldtls) {
		/*
		 * Copy the static TLS block over whole.
		 */
		oldsegbase = (Elf_Addr) oldtls;
		FUNC5((void *)(segbase - tls_static_space),
		    (const void *)(oldsegbase - tls_static_space),
		    tls_static_space);

		/*
		 * We assume that this block was the one we created with
		 * allocate_initial_tls().
		 */
		FUNC2(oldtls, 2*sizeof(Elf_Addr), sizeof(Elf_Addr));
	} else {
		FUNC5((void *)(segbase - tls_static_space),
		    tls_init, tls_init_size);
		FUNC6((void *)(segbase - tls_static_space + tls_init_size),
		    0, tls_static_space - tls_init_size);
	}

	return (void*) segbase;
}