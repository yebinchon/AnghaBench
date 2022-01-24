#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ st_value; int /*<<< orphan*/  st_info; } ;
struct TYPE_9__ {scalar_t__ relocbase; } ;
struct TYPE_8__ {TYPE_5__* sym_out; TYPE_4__* defobj_out; int /*<<< orphan*/ * lockstate; } ;
typedef  TYPE_1__ SymLook ;
typedef  int /*<<< orphan*/  RtldLockState ;
typedef  int /*<<< orphan*/  DoneList ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ STT_FUNC ; 
 scalar_t__ STT_GNU_IFUNC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_5__*,TYPE_4__*) ; 
 scalar_t__ FUNC3 (TYPE_4__*,TYPE_5__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*) ; 

__attribute__((used)) static const void **
FUNC6(const char *name, RtldLockState *lockstate)
{
    SymLook req;
    DoneList donelist;

    FUNC5(&req, name);
    req.lockstate = lockstate;
    FUNC1(&donelist);
    if (FUNC4(&req, &donelist) != 0)
	return (NULL);
    if (FUNC0(req.sym_out->st_info) == STT_FUNC)
	return ((const void **)FUNC2(req.sym_out,
	  req.defobj_out));
    else if (FUNC0(req.sym_out->st_info) == STT_GNU_IFUNC)
	return ((const void **)FUNC3(req.defobj_out, req.sym_out));
    else
	return ((const void **)(req.defobj_out->relocbase +
	  req.sym_out->st_value));
}