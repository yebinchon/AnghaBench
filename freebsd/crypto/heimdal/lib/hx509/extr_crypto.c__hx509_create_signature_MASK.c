#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct signature_alg {int flags; int (* create_signature ) (int /*<<< orphan*/ ,struct signature_alg const*,int /*<<< orphan*/  const,TYPE_1__ const*,int /*<<< orphan*/  const*,TYPE_1__*,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  hx509_private_key ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  heim_octet_string ;
struct TYPE_6__ {int /*<<< orphan*/  algorithm; } ;
typedef  TYPE_1__ AlgorithmIdentifier ;

/* Variables and functions */
 int HX509_CRYPTO_SIG_NO_CONF ; 
 int HX509_SIG_ALG_NO_SUPPORTED ; 
 int PROVIDE_CONF ; 
 struct signature_alg* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct signature_alg const*,int /*<<< orphan*/  const,TYPE_1__ const*,int /*<<< orphan*/  const*,TYPE_1__*,int /*<<< orphan*/ *) ; 

int
FUNC3(hx509_context context,
			const hx509_private_key signer,
			const AlgorithmIdentifier *alg,
			const heim_octet_string *data,
			AlgorithmIdentifier *signatureAlgorithm,
			heim_octet_string *sig)
{
    const struct signature_alg *md;

    md = FUNC0(&alg->algorithm);
    if (md == NULL) {
	FUNC1(context, 0, HX509_SIG_ALG_NO_SUPPORTED,
	    "algorithm no supported");
	return HX509_SIG_ALG_NO_SUPPORTED;
    }

    if (signer && (md->flags & PROVIDE_CONF) == 0) {
	FUNC1(context, 0, HX509_SIG_ALG_NO_SUPPORTED,
	    "algorithm provides no conf");
	return HX509_CRYPTO_SIG_NO_CONF;
    }

    return (*md->create_signature)(context, md, signer, alg, data,
				   signatureAlgorithm, sig);
}