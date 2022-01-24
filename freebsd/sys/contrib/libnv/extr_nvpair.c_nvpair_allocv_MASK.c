#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_4__ {char* nvp_name; int nvp_type; size_t nvp_datasize; size_t nvp_nitems; int /*<<< orphan*/  nvp_magic; int /*<<< orphan*/  nvp_data; } ;
typedef  TYPE_1__ nvpair_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NVPAIR_MAGIC ; 
 size_t NV_NAME_MAX ; 
 int NV_TYPE_FIRST ; 
 int NV_TYPE_LAST ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 TYPE_1__* FUNC3 (int,int) ; 
 size_t FUNC4 (char const*) ; 

__attribute__((used)) static nvpair_t *
FUNC5(const char *name, int type, uint64_t data, size_t datasize,
    size_t nitems)
{
	nvpair_t *nvp;
	size_t namelen;

	FUNC1(type >= NV_TYPE_FIRST && type <= NV_TYPE_LAST);

	namelen = FUNC4(name);
	if (namelen >= NV_NAME_MAX) {
		FUNC0(ENAMETOOLONG);
		return (NULL);
	}

	nvp = FUNC3(1, sizeof(*nvp) + namelen + 1);
	if (nvp != NULL) {
		nvp->nvp_name = (char *)(nvp + 1);
		FUNC2(nvp->nvp_name, name, namelen);
		nvp->nvp_name[namelen] = '\0';
		nvp->nvp_type = type;
		nvp->nvp_data = data;
		nvp->nvp_datasize = datasize;
		nvp->nvp_nitems = nitems;
		nvp->nvp_magic = NVPAIR_MAGIC;
	}

	return (nvp);
}