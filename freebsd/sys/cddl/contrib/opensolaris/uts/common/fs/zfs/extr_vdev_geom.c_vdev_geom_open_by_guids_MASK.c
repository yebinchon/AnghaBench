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
struct TYPE_6__ {char* vdev_path; scalar_t__ vdev_guid; int /*<<< orphan*/  vdev_spa; } ;
typedef  TYPE_2__ vdev_t ;
typedef  int /*<<< orphan*/  uintmax_t ;
struct g_consumer {TYPE_1__* provider; } ;
struct TYPE_5__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (char*) ; 
 struct g_consumer* FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static struct g_consumer *
FUNC8(vdev_t *vd)
{
	struct g_consumer *cp;
	char *buf;
	size_t len;

	FUNC1();

	FUNC0(1, "Searching by guids [%ju:%ju].",
		(uintmax_t)FUNC4(vd->vdev_spa), (uintmax_t)vd->vdev_guid);
	cp = FUNC7(vd);
	if (cp != NULL) {
		len = FUNC6(cp->provider->name) + FUNC6("/dev/") + 1;
		buf = FUNC2(len, KM_SLEEP);

		FUNC3(buf, len, "/dev/%s", cp->provider->name);
		FUNC5(vd->vdev_path);
		vd->vdev_path = buf;

		FUNC0(1, "Attach by guid [%ju:%ju] succeeded, provider %s.",
		    (uintmax_t)FUNC4(vd->vdev_spa),
		    (uintmax_t)vd->vdev_guid, cp->provider->name);
	} else {
		FUNC0(1, "Search by guid [%ju:%ju] failed.",
		    (uintmax_t)FUNC4(vd->vdev_spa),
		    (uintmax_t)vd->vdev_guid);
	}

	return (cp);
}