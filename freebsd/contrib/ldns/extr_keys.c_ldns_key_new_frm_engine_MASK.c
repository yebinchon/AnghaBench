#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_signing_algorithm ;
struct TYPE_7__ {int /*<<< orphan*/  key; } ;
struct TYPE_8__ {TYPE_1__ _key; } ;
typedef  TYPE_2__ ldns_key ;
typedef  scalar_t__ ldns_algorithm ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LDNS_STATUS_ENGINE_KEY_NOT_LOADED ; 
 int /*<<< orphan*/  LDNS_STATUS_ERR ; 
 int /*<<< orphan*/  LDNS_STATUS_MEM_ERR ; 
 int /*<<< orphan*/  LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

ldns_status
FUNC5(ldns_key **key, ENGINE *e, char *key_id, ldns_algorithm alg)
{
	ldns_key *k;

	k = FUNC3();
        if(!k) return LDNS_STATUS_MEM_ERR;
#ifndef S_SPLINT_S
	k->_key.key = FUNC0(e, key_id, FUNC1(), NULL);
        if(!k->_key.key) {
                FUNC2(k);
                return LDNS_STATUS_ERR;
        }
	FUNC4(k, (ldns_signing_algorithm) alg);
	if (!k->_key.key) {
                FUNC2(k);
		return LDNS_STATUS_ENGINE_KEY_NOT_LOADED;
	} 
#endif /* splint */
	*key = k;
	return LDNS_STATUS_OK;
}