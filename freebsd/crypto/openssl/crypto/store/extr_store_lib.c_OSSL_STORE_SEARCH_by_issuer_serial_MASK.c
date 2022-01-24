#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_NAME ;
struct TYPE_4__ {int /*<<< orphan*/  const* serial; int /*<<< orphan*/ * name; int /*<<< orphan*/  search_type; } ;
typedef  TYPE_1__ OSSL_STORE_SEARCH ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  OSSL_STORE_F_OSSL_STORE_SEARCH_BY_ISSUER_SERIAL ; 
 int /*<<< orphan*/  OSSL_STORE_SEARCH_BY_ISSUER_SERIAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

OSSL_STORE_SEARCH *FUNC2(X509_NAME *name,
                                                    const ASN1_INTEGER *serial)
{
    OSSL_STORE_SEARCH *search = FUNC0(sizeof(*search));

    if (search == NULL) {
        FUNC1(OSSL_STORE_F_OSSL_STORE_SEARCH_BY_ISSUER_SERIAL,
                      ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    search->search_type = OSSL_STORE_SEARCH_BY_ISSUER_SERIAL;
    search->name = name;
    search->serial = serial;
    return search;
}