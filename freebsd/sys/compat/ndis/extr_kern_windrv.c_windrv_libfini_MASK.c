#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fpu_cc_ent {int /*<<< orphan*/  ctx; } ;
struct drvdb_ent {int /*<<< orphan*/  ctx; } ;
struct TYPE_4__ {int /*<<< orphan*/  dro_drivername; } ;
struct TYPE_3__ {int /*<<< orphan*/  dro_drivername; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct fpu_cc_ent* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fpu_cc_ent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct fpu_cc_ent* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drvdb_head ; 
 int /*<<< orphan*/  drvdb_mtx ; 
 int /*<<< orphan*/  entries ; 
 TYPE_2__ fake_pccard_driver ; 
 TYPE_1__ fake_pci_driver ; 
 int /*<<< orphan*/  fpu_busy_head ; 
 int /*<<< orphan*/  fpu_busy_mtx ; 
 int /*<<< orphan*/  fpu_free_head ; 
 int /*<<< orphan*/  fpu_free_mtx ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct fpu_cc_ent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  my_tids ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  x86_oldldt ; 

int
FUNC13(void)
{
	struct drvdb_ent	*d;
#ifdef __amd64__
	struct fpu_cc_ent	*ent;
#endif

	FUNC10(&drvdb_mtx); 
	while(FUNC5(&drvdb_head) != NULL) {
		d = FUNC5(&drvdb_head);
		FUNC6(&drvdb_head, link);
		FUNC8(d, M_DEVBUF);
	}
	FUNC11(&drvdb_mtx);

	FUNC4(&fake_pci_driver.dro_drivername);
	FUNC4(&fake_pccard_driver.dro_drivername);

	FUNC9(&drvdb_mtx);

#ifdef __i386__
	smp_rendezvous(NULL, x86_oldldt, NULL, NULL);
	ExFreePool(my_tids);
#endif
#ifdef __amd64__
	while ((ent = FUNC2(&fpu_free_head)) != NULL) {
		FUNC3(ent, entries);
		FUNC7(ent->ctx);
		FUNC8(ent, M_DEVBUF);
	}
	FUNC9(&fpu_free_mtx);

	ent = FUNC2(&fpu_busy_head);
	FUNC1(ent == NULL, ("busy fpu context list is not empty"));
	FUNC9(&fpu_busy_mtx);
#endif
	return (0);
}