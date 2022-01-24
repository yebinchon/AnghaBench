#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  val ;
typedef  scalar_t__ uint64_t ;
struct receive_arg {int /*<<< orphan*/  os; } ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_2__ {int /*<<< orphan*/ * dp_meta_objset; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS_FIELD_RESUME_OBJECT ; 
 int /*<<< orphan*/  DS_FIELD_RESUME_OFFSET ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int,int,scalar_t__*) ; 

__attribute__((used)) static int
FUNC6(struct receive_arg *ra, nvlist_t *begin_nvl)
{
	uint64_t val;
	objset_t *mos = FUNC3(ra->os)->dp_meta_objset;
	uint64_t dsobj = FUNC2(ra->os);
	uint64_t resume_obj, resume_off;

	if (FUNC4(begin_nvl,
	    "resume_object", &resume_obj) != 0 ||
	    FUNC4(begin_nvl,
	    "resume_offset", &resume_off) != 0) {
		return (FUNC0(EINVAL));
	}
	FUNC1(FUNC5(mos, dsobj,
	    DS_FIELD_RESUME_OBJECT, sizeof (val), 1, &val));
	if (resume_obj != val)
		return (FUNC0(EINVAL));
	FUNC1(FUNC5(mos, dsobj,
	    DS_FIELD_RESUME_OFFSET, sizeof (val), 1, &val));
	if (resume_off != val)
		return (FUNC0(EINVAL));

	return (0);
}