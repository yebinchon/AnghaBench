#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  type ;
typedef  size_t dmu_object_byteswap_t ;
typedef  int /*<<< orphan*/  blkptr_t ;
struct TYPE_8__ {int /*<<< orphan*/  ot_name; } ;
struct TYPE_7__ {char* ob_name; } ;
struct TYPE_6__ {char* ci_name; } ;
struct TYPE_5__ {char* ci_name; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/  const*) ; 
 size_t FUNC1 (int /*<<< orphan*/  const*) ; 
 size_t FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 size_t FUNC4 (size_t) ; 
 scalar_t__ FUNC5 (size_t) ; 
 int DMU_OT_NEWTYPE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  (*) (char*,int,char*,char*,char*),char,char*,size_t,int /*<<< orphan*/  const*,char*,char*,char*) ; 
 TYPE_4__* dmu_ot ; 
 TYPE_3__* dmu_ot_byteswap ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* zio_checksum_table ; 
 TYPE_1__* zio_compress_table ; 

void
FUNC9(char *buf, size_t buflen, const blkptr_t *bp)
{
	char type[256];
	char *checksum = NULL;
	char *compress = NULL;

	if (bp != NULL) {
		if (FUNC2(bp) & DMU_OT_NEWTYPE) {
			dmu_object_byteswap_t bswap =
			    FUNC4(FUNC2(bp));
			(void) FUNC7(type, sizeof (type), "bswap %s %s",
			    FUNC5(FUNC2(bp)) ?
			    "metadata" : "data",
			    dmu_ot_byteswap[bswap].ob_name);
		} else {
			(void) FUNC8(type, dmu_ot[FUNC2(bp)].ot_name,
			    sizeof (type));
		}
		if (!FUNC3(bp)) {
			checksum =
			    zio_checksum_table[FUNC0(bp)].ci_name;
		}
		compress = zio_compress_table[FUNC1(bp)].ci_name;
	}

	FUNC6(snprintf, ' ', buf, buflen, bp, type, checksum,
	    compress);
}