#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct descr {scalar_t__ s; } ;
typedef  int /*<<< orphan*/  krb5_kdc_configuration ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_6__ {int len; int /*<<< orphan*/ * val; } ;
typedef  TYPE_1__ krb5_addresses ;
typedef  int /*<<< orphan*/  a_str ;
struct TYPE_7__ {scalar_t__ type; int /*<<< orphan*/  port; int /*<<< orphan*/  family; } ;

/* Variables and functions */
 scalar_t__ SOCK_STREAM ; 
 TYPE_1__ explicit_addresses ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct descr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,size_t*) ; 
 struct descr* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int num_ports ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  port_str ; 
 TYPE_2__* ports ; 
 struct descr* FUNC10 (struct descr*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct descr*,int) ; 
 scalar_t__ rk_INVALID_SOCKET ; 

__attribute__((used)) static int
FUNC12(krb5_context context,
	     krb5_kdc_configuration *config,
	     struct descr **desc)
{
    krb5_error_code ret;
    size_t i, j;
    struct descr *d;
    int num = 0;
    krb5_addresses addresses;

    if (explicit_addresses.len) {
	addresses = explicit_addresses;
    } else {
	ret = FUNC5 (context, &addresses);
	if (ret)
	    FUNC2 (context, 1, ret, "krb5_get_all_server_addrs");
    }
    FUNC9(context, config, port_str);
    d = FUNC7(addresses.len * num_ports * sizeof(*d));
    if (d == NULL)
	FUNC3(context, 1, "malloc(%lu) failed",
		  (unsigned long)num_ports * sizeof(*d));

    for (i = 0; i < num_ports; i++){
	for (j = 0; j < addresses.len; ++j) {
	    FUNC0(context, config, &d[num], &addresses.val[j],
			ports[i].family, ports[i].type, ports[i].port);
	    if(d[num].s != rk_INVALID_SOCKET){
		char a_str[80];
		size_t len;

		FUNC6 (&addresses.val[j], a_str,
				    sizeof(a_str), &len);

		FUNC1(context, config, 5, "listening on %s port %u/%s",
			a_str,
			FUNC8(ports[i].port),
			(ports[i].type == SOCK_STREAM) ? "tcp" : "udp");
		/* XXX */
		num++;
	    }
	}
    }
    FUNC4 (context, &addresses);
    d = FUNC10(d, num * sizeof(*d));
    if (d == NULL && num != 0)
	FUNC3(context, 1, "realloc(%lu) failed",
		  (unsigned long)num * sizeof(*d));
    FUNC11 (d, num);
    *desc = d;
    return num;
}