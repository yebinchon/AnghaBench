#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  valid_policy; } ;
typedef  TYPE_1__ X509_POLICY_DATA ;
struct TYPE_11__ {int /*<<< orphan*/ * data; TYPE_1__* anyPolicy; } ;
typedef  TYPE_2__ X509_POLICY_CACHE ;
struct TYPE_12__ {int /*<<< orphan*/  ex_flags; TYPE_2__* policy_cache; } ;
typedef  TYPE_3__ X509 ;
typedef  int /*<<< orphan*/  POLICYINFO ;
typedef  int /*<<< orphan*/  CERTIFICATEPOLICIES ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  EXFLAG_INVALID_POLICY ; 
 scalar_t__ NID_any_policy ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POLICYINFO_free ; 
 int /*<<< orphan*/  X509V3_F_POLICY_CACHE_CREATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  policy_data_cmp ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (TYPE_1__*)) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC11(X509 *x,
                               CERTIFICATEPOLICIES *policies, int crit)
{
    int i, num, ret = 0;
    X509_POLICY_CACHE *cache = x->policy_cache;
    X509_POLICY_DATA *data = NULL;
    POLICYINFO *policy;

    if ((num = FUNC4(policies)) <= 0)
        goto bad_policy;
    cache->data = FUNC8(policy_data_cmp);
    if (cache->data == NULL) {
        FUNC1(X509V3_F_POLICY_CACHE_CREATE, ERR_R_MALLOC_FAILURE);
        goto just_cleanup;
    }
    for (i = 0; i < num; i++) {
        policy = FUNC6(policies, i);
        data = FUNC3(policy, NULL, crit);
        if (data == NULL) {
            FUNC1(X509V3_F_POLICY_CACHE_CREATE, ERR_R_MALLOC_FAILURE);
            goto just_cleanup;
        }
        /*
         * Duplicate policy OIDs are illegal: reject if matches found.
         */
        if (FUNC0(data->valid_policy) == NID_any_policy) {
            if (cache->anyPolicy) {
                ret = -1;
                goto bad_policy;
            }
            cache->anyPolicy = data;
        } else if (FUNC7(cache->data, data) >=0 ) {
            ret = -1;
            goto bad_policy;
        } else if (!FUNC10(cache->data, data)) {
            FUNC1(X509V3_F_POLICY_CACHE_CREATE, ERR_R_MALLOC_FAILURE);
            goto bad_policy;
        }
        data = NULL;
    }
    ret = 1;

 bad_policy:
    if (ret == -1)
        x->ex_flags |= EXFLAG_INVALID_POLICY;
    FUNC2(data);
 just_cleanup:
    FUNC5(policies, POLICYINFO_free);
    if (ret <= 0) {
        FUNC9(cache->data, policy_data_free);
        cache->data = NULL;
    }
    return ret;
}