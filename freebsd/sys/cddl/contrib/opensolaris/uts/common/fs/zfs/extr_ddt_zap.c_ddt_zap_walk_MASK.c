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
typedef  int /*<<< orphan*/  zap_cursor_t ;
struct TYPE_5__ {int za_integer_length; scalar_t__ za_name; int /*<<< orphan*/  za_num_integers; } ;
typedef  TYPE_1__ zap_attribute_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uchar_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  ddt_key_t ;
struct TYPE_6__ {int /*<<< orphan*/  dde_key; int /*<<< orphan*/  dde_phys; } ;
typedef  TYPE_2__ ddt_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DDT_KEY_WORDS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(objset_t *os, uint64_t object, ddt_entry_t *dde, uint64_t *walk)
{
	zap_cursor_t zc;
	zap_attribute_t za;
	int error;

	if (*walk == 0) {
		/*
		 * We don't want to prefetch the entire ZAP object, because
		 * it can be enormous.  Also the primary use of DDT iteration
		 * is for scrubbing, in which case we will be issuing many
		 * scrub i/os for each ZAP block that we read in, so
		 * reading the ZAP is unlikely to be the bottleneck.
		 */
		FUNC4(&zc, os, object);
	} else {
		FUNC5(&zc, os, object, *walk);
	}
	if ((error = FUNC6(&zc, &za)) == 0) {
		uchar_t cbuf[sizeof (dde->dde_phys) + 1];
		uint64_t csize = za.za_num_integers;
		FUNC0(za.za_integer_length == 1);
		error = FUNC8(os, object, (uint64_t *)za.za_name,
		    DDT_KEY_WORDS, 1, csize, cbuf);
		FUNC0(error == 0);
		if (error == 0) {
			FUNC1(cbuf, dde->dde_phys, csize,
			    sizeof (dde->dde_phys));
			dde->dde_key = *(ddt_key_t *)za.za_name;
		}
		FUNC2(&zc);
		*walk = FUNC7(&zc);
	}
	FUNC3(&zc);
	return (error);
}