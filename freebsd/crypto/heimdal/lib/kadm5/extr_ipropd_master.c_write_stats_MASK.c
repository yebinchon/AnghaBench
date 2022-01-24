#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  time_t ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  str ;
struct TYPE_4__ {int /*<<< orphan*/  sa; } ;
struct TYPE_5__ {char* name; int flags; struct TYPE_5__* next; int /*<<< orphan*/  seen; scalar_t__ version; TYPE_1__ addr; } ;
typedef  TYPE_2__ slave ;
typedef  int /*<<< orphan*/ * rtbl_t ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_address ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  RTBL_ALIGN_RIGHT ; 
 int /*<<< orphan*/  SLAVE_ADDRESS ; 
 int SLAVE_F_DEAD ; 
 int /*<<< orphan*/  SLAVE_NAME ; 
 int /*<<< orphan*/  SLAVE_SEEN ; 
 int /*<<< orphan*/  SLAVE_STATUS ; 
 int /*<<< orphan*/  SLAVE_VERSION ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC16(krb5_context context, slave *slaves, uint32_t current_version)
{
    char str[100];
    rtbl_t tbl;
    time_t t = FUNC15(NULL);
    FILE *fp;

    fp = FUNC6(context);
    if (fp == NULL)
	return;

    FUNC2(context, t, str, sizeof(str), TRUE);
    FUNC1(fp, "Status for slaves, last updated: %s\n\n", str);

    FUNC1(fp, "Master version: %lu\n\n", (unsigned long)current_version);

    tbl = FUNC9();
    if (tbl == NULL) {
	FUNC0(fp);
	return;
    }

    FUNC7(tbl, SLAVE_NAME, 0);
    FUNC7(tbl, SLAVE_ADDRESS, 0);
    FUNC7(tbl, SLAVE_VERSION, RTBL_ALIGN_RIGHT);
    FUNC7(tbl, SLAVE_STATUS, 0);
    FUNC7(tbl, SLAVE_SEEN, 0);

    FUNC13(tbl, "  ");
    FUNC12(tbl, SLAVE_NAME, "");

    while (slaves) {
	krb5_address addr;
	krb5_error_code ret;
	FUNC8(tbl, SLAVE_NAME, slaves->name);
	ret = FUNC5 (context,
				     (struct sockaddr*)&slaves->addr.sa, &addr);
	if(ret == 0) {
	    FUNC4(&addr, str, sizeof(str), NULL);
	    FUNC3(context, &addr);
	    FUNC8(tbl, SLAVE_ADDRESS, str);
	} else
	    FUNC8(tbl, SLAVE_ADDRESS, "<unknown>");

	FUNC14(str, sizeof(str), "%u", (unsigned)slaves->version);
	FUNC8(tbl, SLAVE_VERSION, str);

	if (slaves->flags & SLAVE_F_DEAD)
	    FUNC8(tbl, SLAVE_STATUS, "Down");
	else
	    FUNC8(tbl, SLAVE_STATUS, "Up");

	ret = FUNC2(context, slaves->seen, str, sizeof(str), TRUE);
	FUNC8(tbl, SLAVE_SEEN, str);

	slaves = slaves->next;
    }

    FUNC11(tbl, fp);
    FUNC10(tbl);

    FUNC0(fp);
}