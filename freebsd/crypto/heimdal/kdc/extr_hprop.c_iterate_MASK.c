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
struct prop_data {int dummy; } ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  HDB ;

/* Variables and functions */
 int /*<<< orphan*/  HDB_F_DECRYPT ; 
#define  HPROP_HEIMDAL 129 
#define  HPROP_MIT_DUMP 128 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct prop_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 int FUNC3 (struct prop_data*,char const*) ; 
 int /*<<< orphan*/  v5_prop ; 

__attribute__((used)) static int
FUNC4 (krb5_context context,
	 const char *database_name,
	 HDB *db,
	 int type,
	 struct prop_data *pd)
{
    int ret;

    switch(type) {
    case HPROP_MIT_DUMP:
	ret = FUNC3(pd, database_name);
	if (ret)
	    FUNC2(context, ret, "mit_prop_dump");
	break;
    case HPROP_HEIMDAL:
	ret = FUNC0(context, db, HDB_F_DECRYPT, v5_prop, pd);
	if(ret)
	    FUNC2(context, ret, "hdb_foreach");
	break;
    default:
	FUNC1(context, 1, "unknown prop type: %d", type);
    }
    return ret;
}