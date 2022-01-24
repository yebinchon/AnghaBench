#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct TYPE_7__ {int /*<<< orphan*/ * subs; int /*<<< orphan*/  len; } ;
struct snmp_value {TYPE_3__ var; } ;
struct TYPE_6__ {int /*<<< orphan*/  ifp; TYPE_1__* mib; } ;
struct atmif_priv {TYPE_2__ pub; int /*<<< orphan*/  index; } ;
typedef  enum snmp_op { ____Placeholder_snmp_op } snmp_op ;
struct TYPE_5__ {scalar_t__ pcr; } ;

/* Variables and functions */
 struct atmif_priv* FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,size_t) ; 
 struct atmif_priv* FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,size_t) ; 
 int SNMP_ERR_NOERROR ; 
 int SNMP_ERR_NOSUCHNAME ; 
 int SNMP_ERR_NO_CREATION ; 
#define  SNMP_OP_COMMIT 132 
#define  SNMP_OP_GET 131 
#define  SNMP_OP_GETNEXT 130 
#define  SNMP_OP_ROLLBACK 129 
#define  SNMP_OP_SET 128 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct atmif_priv*) ; 
 int /*<<< orphan*/  atmif_list ; 
 int /*<<< orphan*/  FUNC4 (struct atmif_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(struct snmp_value *value, u_int sub, enum snmp_op op,
    struct atmif_priv **aifp)
{
	switch (op) {

	  case SNMP_OP_GETNEXT:
		if ((*aifp = FUNC1(&atmif_list,
		    &value->var, sub)) == NULL)
			return (SNMP_ERR_NOSUCHNAME);
		value->var.len = sub + 1;
		value->var.subs[sub] = (*aifp)->index;
		break;

	  case SNMP_OP_GET:
		if ((*aifp = FUNC0(&atmif_list,
		    &value->var, sub)) == NULL)
			return (SNMP_ERR_NOSUCHNAME);
		break;

	  case SNMP_OP_SET:
		if ((*aifp = FUNC0(&atmif_list,
		    &value->var, sub)) == NULL)
			return (SNMP_ERR_NO_CREATION);
		break;

	  case SNMP_OP_ROLLBACK:
	  case SNMP_OP_COMMIT:
		if ((*aifp = FUNC0(&atmif_list,
		    &value->var, sub)) == NULL)
			FUNC2();
		return (SNMP_ERR_NOERROR);
	}

	if ((*aifp)->pub.mib->pcr == 0) {
		FUNC5((*aifp)->pub.ifp);
		FUNC4(*aifp);
		FUNC3(*aifp);
	}

	return (SNMP_ERR_NOERROR);
}