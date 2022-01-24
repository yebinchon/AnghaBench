#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* afsdb; } ;
struct rk_resource_record {scalar_t__ type; struct rk_resource_record* next; TYPE_1__ u; } ;
struct rk_dns_reply {struct rk_resource_record* head; } ;
struct TYPE_4__ {int preference; int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rk_dns_reply*) ; 
 struct rk_dns_reply* FUNC1 (char const*,char*) ; 
 scalar_t__ rk_ns_t_afsdb ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int
FUNC3(const char *cell, char *dbserver, size_t len)
{
    struct rk_dns_reply *r;
    int ok = -1;
    r = FUNC1(cell, "afsdb");
    if(r){
	struct rk_resource_record *rr = r->head;
	while(rr){
	    if(rr->type == rk_ns_t_afsdb && rr->u.afsdb->preference == 1){
		FUNC2(dbserver,
				rr->u.afsdb->domain,
				len);
		ok = 0;
		break;
	    }
	    rr = rr->next;
	}
	FUNC0(r);
    }
    return ok;
}