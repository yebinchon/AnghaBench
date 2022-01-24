#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct so_list {int /*<<< orphan*/  lm_info; } ;
struct read_map_ctxt {scalar_t__ next; scalar_t__ tail; int /*<<< orphan*/  proc; } ;
typedef  int ldr_region_t ;
struct TYPE_5__ {int /*<<< orphan*/  mapaddr; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  regionname_addr; scalar_t__ lri_mapaddr; scalar_t__ lri_vaddr; int /*<<< orphan*/  lri_name; } ;
typedef  TYPE_1__ ldr_region_info_t ;
struct TYPE_6__ {char* lmi_name; int lmi_nregion; int region_count; scalar_t__ regioninfo_addr; int /*<<< orphan*/  modinfo_addr; int /*<<< orphan*/  module_name; scalar_t__ next; } ;
typedef  TYPE_2__ ldr_module_info_t ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 scalar_t__ LDR_NULL_MODULE ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct so_list*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct so_list*,char*,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,TYPE_2__*,int,size_t*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,int,TYPE_1__*,int,size_t*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct so_list*) ; 
 scalar_t__ FUNC7 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char**,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11 (struct read_map_ctxt *ctxt, struct so_list *so)
{
  ldr_module_info_t minf;
  ldr_region_info_t rinf;

#ifdef USE_LDR_ROUTINES
  size_t size;
  ldr_region_t i;

  /* Retrieve the next element.  */
  if (ldr_next_module (ctxt->proc, &ctxt->next) != 0)
    return 0;
  if (ctxt->next == LDR_NULL_MODULE)
    return 0;
  if (ldr_inq_module (ctxt->proc, ctxt->next, &minf, sizeof minf, &size) != 0)
    return 0;

  /* Initialize the module name and section count.  */
  init_so (so, minf.lmi_name, 0, minf.lmi_nregion);

  /* Retrieve section names and offsets.  */
  for (i = 0; i < minf.lmi_nregion; i++)
    {
      if (ldr_inq_region (ctxt->proc, ctxt->next, i, &rinf,
			  sizeof rinf, &size) != 0)
	goto err;
      init_sec (so, (int) i, 0, xstrdup (rinf.lri_name),
		(CORE_ADDR) rinf.lri_vaddr, (CORE_ADDR) rinf.lri_mapaddr);
    }
  lm_secs_sort (so->lm_info);
#else
  char *name;
  int errcode, i;

  /* Retrieve the next element.  */
  if (!ctxt->next)
    return 0;
  if (FUNC7 (ctxt->next, (char *) &minf, sizeof minf) != 0)
    return 0;
  if (ctxt->next == ctxt->tail)
    ctxt->next = 0;
  else
    ctxt->next = minf.next;

  /* Initialize the module name and section count.  */
  FUNC8 (minf.module_name, &name, PATH_MAX, &errcode);
  if (errcode != 0)
    return 0;
  FUNC1 (so, name, !minf.modinfo_addr, minf.region_count);
  FUNC9 (name);

  /* Retrieve section names and offsets.  */
  for (i = 0; i < minf.region_count; i++)
    {
      if (FUNC7 (minf.regioninfo_addr + i * sizeof rinf,
			      (char *) &rinf, sizeof rinf) != 0)
	goto err;
      FUNC0 (so, i, rinf.regionname_addr, NULL, rinf.vaddr, rinf.mapaddr);
    }
#endif   /* !USE_LDR_ROUTINES */
  return 1;

 err:
  FUNC6 (so);
  return 0;
}