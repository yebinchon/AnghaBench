#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hx509_context ;
typedef  TYPE_3__* hx509_ca_tbs ;
typedef  int /*<<< orphan*/  gn ;
struct TYPE_8__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct TYPE_9__ {TYPE_1__ dNSName; } ;
struct TYPE_11__ {TYPE_2__ u; int /*<<< orphan*/  element; } ;
struct TYPE_10__ {int /*<<< orphan*/  san; } ;
typedef  TYPE_4__ GeneralName ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  choice_GeneralName_dNSName ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

int
FUNC4(hx509_context context,
			      hx509_ca_tbs tbs,
			      const char *dnsname)
{
    GeneralName gn;

    FUNC1(&gn, 0, sizeof(gn));
    gn.element = choice_GeneralName_dNSName;
    gn.u.dNSName.data = FUNC2(dnsname);
    gn.u.dNSName.length = FUNC3(dnsname);

    return FUNC0(&tbs->san, &gn);
}