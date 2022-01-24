#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  hostname; int /*<<< orphan*/ * next; int /*<<< orphan*/ * ai; int /*<<< orphan*/  def_port; int /*<<< orphan*/  port; int /*<<< orphan*/  proto; } ;
typedef  TYPE_1__ krb5_krbhst_info ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 

krb5_error_code
FUNC5(krb5_context context,
			krb5_krbhst_info *from,
			krb5_krbhst_info **to)
{
    size_t hostnamelen = FUNC4(from->hostname);
    /* trailing NUL is included in structure */
    *to = FUNC1(1, sizeof(**to) + hostnamelen);
    if(*to == NULL) {
	FUNC2(context, ENOMEM,
			       FUNC0("malloc: out of memory", ""));
	return ENOMEM;
    }

    (*to)->proto = from->proto;
    (*to)->port = from->port;
    (*to)->def_port = from->def_port;
    (*to)->ai = from->ai;
    from->ai = NULL;
    (*to)->next = NULL;
    FUNC3((*to)->hostname, from->hostname, hostnamelen + 1);
    return 0;
}