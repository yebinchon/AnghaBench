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
typedef  int /*<<< orphan*/  zap_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  matchtype_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC3(objset_t *os, uint64_t zapobj, const char *name,
    uint64_t integer_size, uint64_t num_integers, void *buf,
    matchtype_t mt, char *realname, int rn_len,
    boolean_t *ncp)
{
	zap_t *zap;

	int err =
	    FUNC0(os, zapobj, NULL, RW_READER, TRUE, FALSE, FTAG, &zap);
	if (err != 0)
		return (err);
	err = FUNC1(zap, name, integer_size,
	    num_integers, buf, mt, realname, rn_len, ncp);
	FUNC2(zap, FTAG);
	return (err);
}