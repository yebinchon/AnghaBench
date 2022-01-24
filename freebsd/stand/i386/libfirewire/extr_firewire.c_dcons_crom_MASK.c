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
struct fwohci_softc {struct crom_chunk* crom_root; struct crom_src* crom_src; struct crom_src_buf* crom_src_buf; } ;
struct crom_src_buf {int /*<<< orphan*/  unit; int /*<<< orphan*/  ver; int /*<<< orphan*/  spec; } ;
struct crom_src {int dummy; } ;
struct crom_chunk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CROM_UDIR ; 
 int /*<<< orphan*/  CSRKEY_SPEC ; 
 int /*<<< orphan*/  CSRKEY_VER ; 
 int /*<<< orphan*/  CSRVAL_VENDOR_PRIVATE ; 
 int /*<<< orphan*/  DCONS_CSR_KEY_HI ; 
 int /*<<< orphan*/  DCONS_CSR_KEY_LO ; 
 int /*<<< orphan*/  DCONS_CSR_VAL_VER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct crom_src*,struct crom_chunk*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct crom_src*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  dcons_paddr ; 

__attribute__((used)) static void
FUNC6(struct fwohci_softc *sc)
{
	struct crom_src_buf *buf;
	struct crom_src *src;
	struct crom_chunk *root;

	buf = sc->crom_src_buf;
	src = sc->crom_src;
	root = sc->crom_root;

	FUNC2(&buf->unit, sizeof(struct crom_chunk));

	FUNC3(src, root, &buf->unit, CROM_UDIR);
	FUNC4(&buf->unit, CSRKEY_SPEC, CSRVAL_VENDOR_PRIVATE);
	FUNC5(src, &buf->unit, &buf->spec, "FreeBSD");
	FUNC4(&buf->unit, CSRKEY_VER, DCONS_CSR_VAL_VER);
	FUNC5(src, &buf->unit, &buf->ver, "dcons");
	FUNC4(&buf->unit, DCONS_CSR_KEY_HI, FUNC0(dcons_paddr));
	FUNC4(&buf->unit, DCONS_CSR_KEY_LO, FUNC1(dcons_paddr));
}