#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_NAME ;
typedef  int /*<<< orphan*/  X509_EXTENSION ;
struct TYPE_14__ {TYPE_2__* location; int /*<<< orphan*/ * method; } ;
struct TYPE_13__ {int /*<<< orphan*/ * locator; int /*<<< orphan*/ * issuer; } ;
struct TYPE_11__ {int /*<<< orphan*/ * ia5; } ;
struct TYPE_12__ {TYPE_1__ d; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ OCSP_SERVICELOC ;
typedef  int /*<<< orphan*/  ASN1_STRING ;
typedef  int /*<<< orphan*/  ASN1_IA5STRING ;
typedef  TYPE_4__ ACCESS_DESCRIPTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 TYPE_4__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  GEN_URI ; 
 int /*<<< orphan*/  NID_ad_OCSP ; 
 int /*<<< orphan*/  NID_id_pkix_OCSP_serviceLocator ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 TYPE_3__* FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_4__*) ; 

X509_EXTENSION *FUNC13(X509_NAME *issuer, const char **urls)
{
    X509_EXTENSION *x = NULL;
    ASN1_IA5STRING *ia5 = NULL;
    OCSP_SERVICELOC *sloc = NULL;
    ACCESS_DESCRIPTION *ad = NULL;

    if ((sloc = FUNC7()) == NULL)
        goto err;
    FUNC10(sloc->issuer);
    if ((sloc->issuer = FUNC9(issuer)) == NULL)
        goto err;
    if (urls && *urls
        && (sloc->locator = FUNC11()) == NULL)
        goto err;
    while (urls && *urls) {
        if ((ad = FUNC1()) == NULL)
            goto err;
        if ((ad->method = FUNC5(NID_ad_OCSP)) == NULL)
            goto err;
        if ((ia5 = FUNC3()) == NULL)
            goto err;
        if (!FUNC4((ASN1_STRING *)ia5, *urls, -1))
            goto err;
        /* ad->location is allocated inside ACCESS_DESCRIPTION_new */
        ad->location->type = GEN_URI;
        ad->location->d.ia5 = ia5;
        ia5 = NULL;
        if (!FUNC12(sloc->locator, ad))
            goto err;
        ad = NULL;
        urls++;
    }
    x = FUNC8(NID_id_pkix_OCSP_serviceLocator, 0, sloc);
 err:
    FUNC2(ia5);
    FUNC0(ad);
    FUNC6(sloc);
    return x;
}