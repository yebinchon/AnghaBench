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
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_resolver ;
typedef  int /*<<< orphan*/  const ldns_rdf ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_STATUS_CRYPTO_NO_TRUSTED_DNSKEY ; 
 int /*<<< orphan*/  LDNS_STATUS_CRYPTO_NO_TRUSTED_DS ; 
 int /*<<< orphan*/  LDNS_STATUS_OK ; 
 int /*<<< orphan*/  const* FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

ldns_rr_list *
FUNC6(const ldns_resolver *res,
                             const ldns_rdf *domain,
                             const ldns_rr_list *keys,
			     time_t check_time,
                             ldns_status *status)
{
	ldns_rr_list * trusted_keys = NULL;
	ldns_rr_list * ds_keys = NULL;
	ldns_rdf * prev_parent_domain;
	ldns_rdf *      parent_domain;
	ldns_rr_list * parent_keys = NULL;

	if (res && domain && keys) {

		if ((trusted_keys = FUNC4(res,
                                         domain, keys, check_time))) {
			*status = LDNS_STATUS_OK;
		} else {
			/* No trusted keys in this domain, we'll have to find some in the parent domain */
			*status = LDNS_STATUS_CRYPTO_NO_TRUSTED_DNSKEY;

			parent_domain = FUNC0(domain);
			while (parent_domain && /* Fail if we are at the root*/
					FUNC2(parent_domain) > 0) {
	
				if ((parent_keys = 
					FUNC6(res,
					     parent_domain,
					     keys,
					     check_time,
					     status))) {
					/* Check DS records */
					if ((ds_keys =
						FUNC5(res,
						     domain,
						     parent_keys,
						     check_time))) {
						trusted_keys =
						FUNC6(
								res, 
								domain, 
								ds_keys, 
								check_time,
								status);
						FUNC3(ds_keys);
					} else {
						/* No valid DS at the parent -- fail */
						*status = LDNS_STATUS_CRYPTO_NO_TRUSTED_DS ;
					}
					FUNC3(parent_keys);
					break;
				} else {
					parent_domain = FUNC0((
						prev_parent_domain 
							= parent_domain
						));
					FUNC1(prev_parent_domain);
				}
			}
			if (parent_domain) {
				FUNC1(parent_domain);
			}
		}
	}
	return trusted_keys;
}