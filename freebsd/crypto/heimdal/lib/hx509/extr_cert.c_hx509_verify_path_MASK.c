#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_70__   TYPE_9__ ;
typedef  struct TYPE_69__   TYPE_8__ ;
typedef  struct TYPE_68__   TYPE_7__ ;
typedef  struct TYPE_67__   TYPE_6__ ;
typedef  struct TYPE_66__   TYPE_5__ ;
typedef  struct TYPE_65__   TYPE_4__ ;
typedef  struct TYPE_64__   TYPE_3__ ;
typedef  struct TYPE_63__   TYPE_2__ ;
typedef  struct TYPE_62__   TYPE_29__ ;
typedef  struct TYPE_61__   TYPE_1__ ;
typedef  struct TYPE_60__   TYPE_12__ ;
typedef  struct TYPE_59__   TYPE_11__ ;
typedef  struct TYPE_58__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  proxy_issuer ;
typedef  TYPE_6__* hx509_verify_ctx ;
struct TYPE_68__ {size_t len; TYPE_9__** val; } ;
typedef  TYPE_7__ hx509_path ;
typedef  int /*<<< orphan*/  hx509_name_constraints ;
typedef  TYPE_8__* hx509_context ;
typedef  int /*<<< orphan*/ * hx509_certs ;
typedef  TYPE_9__* hx509_cert ;
typedef  enum certtype { ____Placeholder_certtype } certtype ;
struct TYPE_70__ {TYPE_12__* data; int /*<<< orphan*/  basename; } ;
struct TYPE_69__ {scalar_t__ default_trust_anchors; } ;
struct TYPE_67__ {int flags; scalar_t__ time_now; scalar_t__ revoke_ctx; int /*<<< orphan*/  max_depth; scalar_t__ trust_anchors; } ;
struct TYPE_65__ {int /*<<< orphan*/  notBefore; int /*<<< orphan*/  notAfter; } ;
struct TYPE_66__ {TYPE_4__ validity; int /*<<< orphan*/  _save; int /*<<< orphan*/  subject; int /*<<< orphan*/  issuer; } ;
struct TYPE_63__ {size_t len; TYPE_29__* val; } ;
struct TYPE_64__ {TYPE_2__ rdnSequence; } ;
struct TYPE_62__ {int len; TYPE_1__* val; } ;
struct TYPE_61__ {int /*<<< orphan*/  type; } ;
struct TYPE_60__ {int /*<<< orphan*/  signatureAlgorithm; TYPE_5__ tbsCertificate; int /*<<< orphan*/  signatureValue; } ;
struct TYPE_59__ {TYPE_3__ u; } ;
struct TYPE_58__ {size_t* pCPathLenConstraint; } ;
typedef  TYPE_10__ ProxyCertInfo ;
typedef  TYPE_11__ Name ;
typedef  TYPE_12__ Certificate ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_6__*) ; 
#define  CA_CERT 130 
 scalar_t__ FUNC1 (TYPE_6__*) ; 
#define  EE_CERT 129 
 int /*<<< orphan*/  FALSE ; 
 int HX509_CERT_USED_AFTER_TIME ; 
 int HX509_CERT_USED_BEFORE_TIME ; 
 int /*<<< orphan*/  HX509_ERROR_APPEND ; 
 int HX509_PATH_TOO_LONG ; 
 int HX509_PROXY_CERT_INVALID ; 
 int HX509_PROXY_CERT_NAME_WRONG ; 
 int HX509_VERIFY_CTX_F_ALLOW_PROXY_CERTIFICATE ; 
 int HX509_VERIFY_CTX_F_NO_BEST_BEFORE_CHECK ; 
 int HX509_VERIFY_CTX_F_TIME_SET ; 
#define  PROXY_CERT 128 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_8__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_9__*,int /*<<< orphan*/ *,TYPE_7__*) ; 
 TYPE_12__* FUNC5 (TYPE_9__*) ; 
 int FUNC6 (TYPE_11__*,int /*<<< orphan*/ *,int*) ; 
 int FUNC7 (TYPE_11__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*) ; 
 int FUNC9 (TYPE_8__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC10 (TYPE_8__*,TYPE_9__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_8__*,TYPE_12__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  asn1_oid_id_at_commonName ; 
 int /*<<< orphan*/  asn1_oid_id_x509_ce_issuerAltName ; 
 int /*<<< orphan*/  asn1_oid_id_x509_ce_subjectAltName ; 
 int FUNC12 (TYPE_8__*,TYPE_12__*,int*) ; 
 int FUNC13 (TYPE_8__*,TYPE_12__*,int,size_t) ; 
 int FUNC14 (TYPE_8__*,TYPE_12__*,int,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_8__*,int /*<<< orphan*/ *,TYPE_12__*) ; 
 int FUNC16 (int /*<<< orphan*/ *,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_12__*,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_29__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int FUNC23 (TYPE_8__*,int /*<<< orphan*/ *,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ **) ; 
 int FUNC25 (TYPE_8__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC26 (TYPE_8__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC27 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int FUNC30 (TYPE_8__*,scalar_t__,int /*<<< orphan*/ *,scalar_t__,TYPE_9__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_8__*,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_8__*,TYPE_12__*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_11__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC35 (int /*<<< orphan*/ *) ; 

int
FUNC36(hx509_context context,
		  hx509_verify_ctx ctx,
		  hx509_cert cert,
		  hx509_certs pool)
{
    hx509_name_constraints nc;
    hx509_path path;
    int ret, proxy_cert_depth, selfsigned_depth, diff;
    size_t i, k;
    enum certtype type;
    Name proxy_issuer;
    hx509_certs anchors = NULL;

    FUNC34(&proxy_issuer, 0, sizeof(proxy_issuer));

    ret = FUNC32(&nc);
    if (ret)
	return ret;

    path.val = NULL;
    path.len = 0;

    if ((ctx->flags & HX509_VERIFY_CTX_F_TIME_SET) == 0)
	ctx->time_now = FUNC35(NULL);

    /*
     *
     */
    if (ctx->trust_anchors)
	anchors = FUNC27(ctx->trust_anchors);
    else if (context->default_trust_anchors && FUNC0(ctx))
	anchors = FUNC27(context->default_trust_anchors);
    else {
	ret = FUNC25(context, "MEMORY:no-TA", 0, NULL, &anchors);
	if (ret)
	    goto out;
    }

    /*
     * Calculate the path from the certificate user presented to the
     * to an anchor.
     */
    ret = FUNC4(context, 0, ctx->time_now,
				anchors, ctx->max_depth,
				cert, pool, &path);
    if (ret)
	goto out;

    /*
     * Check CA and proxy certificate chain from the top of the
     * certificate chain. Also check certificate is valid with respect
     * to the current time.
     *
     */

    proxy_cert_depth = 0;
    selfsigned_depth = 0;

    if (ctx->flags & HX509_VERIFY_CTX_F_ALLOW_PROXY_CERTIFICATE)
	type = PROXY_CERT;
    else
	type = EE_CERT;

    for (i = 0; i < path.len; i++) {
	Certificate *c;
	time_t t;

	c = FUNC5(path.val[i]);

	/*
	 * Lets do some basic check on issuer like
	 * keyUsage.keyCertSign and basicConstraints.cA bit depending
	 * on what type of certificate this is.
	 */

	switch (type) {
	case CA_CERT:

	    /* XXX make constants for keyusage */
	    ret = FUNC14(context, c, 1 << 5,
				  FUNC2(ctx) ? TRUE : FALSE);
	    if (ret) {
		FUNC31(context, HX509_ERROR_APPEND, ret,
				       "Key usage missing from CA certificate");
		goto out;
	    }

	    /* self signed cert doesn't add to path length */
	    if (i + 1 != path.len) {
		int selfsigned;

		ret = FUNC12(context, c, &selfsigned);
		if (ret)
		    goto out;
		if (selfsigned)
		    selfsigned_depth++;
	    }

	    break;
	case PROXY_CERT: {
	    ProxyCertInfo info;

	    if (FUNC33(context, c, &info) == 0) {
		size_t j;

		if (info.pCPathLenConstraint != NULL &&
		    *info.pCPathLenConstraint < i)
		{
		    FUNC20(&info);
		    ret = HX509_PATH_TOO_LONG;
		    FUNC31(context, 0, ret,
					   "Proxy certificate chain "
					   "longer then allowed");
		    goto out;
		}
		/* XXX MUST check info.proxyPolicy */
		FUNC20(&info);

		j = 0;
		if (FUNC18(c, &asn1_oid_id_x509_ce_subjectAltName, &j)) {
		    ret = HX509_PROXY_CERT_INVALID;
		    FUNC31(context, 0, ret,
					   "Proxy certificate have explicity "
					   "forbidden subjectAltName");
		    goto out;
		}

		j = 0;
		if (FUNC18(c, &asn1_oid_id_x509_ce_issuerAltName, &j)) {
		    ret = HX509_PROXY_CERT_INVALID;
		    FUNC31(context, 0, ret,
					   "Proxy certificate have explicity "
					   "forbidden issuerAltName");
		    goto out;
		}

		/*
		 * The subject name of the proxy certificate should be
		 * CN=XXX,<proxy issuer>, prune of CN and check if its
		 * the same over the whole chain of proxy certs and
		 * then check with the EE cert when we get to it.
		 */

		if (proxy_cert_depth) {
		    ret = FUNC6(&proxy_issuer, &c->tbsCertificate.subject, &diff);
		    if (ret) {
			FUNC31(context, 0, ret, "Out of memory");
			goto out;
		    }
		    if (diff) {
			ret = HX509_PROXY_CERT_NAME_WRONG;
			FUNC31(context, 0, ret,
					       "Base proxy name not right");
			goto out;
		    }
		}

		FUNC19(&proxy_issuer);

		ret = FUNC16(&c->tbsCertificate.subject, &proxy_issuer);
		if (ret) {
		    FUNC28(context);
		    goto out;
		}

		j = proxy_issuer.u.rdnSequence.len;
		if (proxy_issuer.u.rdnSequence.len < 2
		    || proxy_issuer.u.rdnSequence.val[j - 1].len > 1
		    || FUNC17(&proxy_issuer.u.rdnSequence.val[j - 1].val[0].type,
					&asn1_oid_id_at_commonName))
		{
		    ret = HX509_PROXY_CERT_NAME_WRONG;
		    FUNC31(context, 0, ret,
					   "Proxy name too short or "
					   "does not have Common name "
					   "at the top");
		    goto out;
		}

		FUNC21(&proxy_issuer.u.rdnSequence.val[j - 1]);
		proxy_issuer.u.rdnSequence.len -= 1;

		ret = FUNC6(&proxy_issuer, &c->tbsCertificate.issuer, &diff);
		if (ret) {
		    FUNC31(context, 0, ret, "Out of memory");
		    goto out;
		}
		if (diff != 0) {
		    ret = HX509_PROXY_CERT_NAME_WRONG;
		    FUNC31(context, 0, ret,
					   "Proxy issuer name not as expected");
		    goto out;
		}

		break;
	    } else {
		/*
		 * Now we are done with the proxy certificates, this
		 * cert was an EE cert and we we will fall though to
		 * EE checking below.
		 */
		type = EE_CERT;
		/* FALLTHOUGH */
	    }
	}
	case EE_CERT:
	    /*
	     * If there where any proxy certificates in the chain
	     * (proxy_cert_depth > 0), check that the proxy issuer
	     * matched proxy certificates "base" subject.
	     */
	    if (proxy_cert_depth) {

		ret = FUNC6(&proxy_issuer,
				      &c->tbsCertificate.subject, &diff);
		if (ret) {
		    FUNC31(context, 0, ret, "out of memory");
		    goto out;
		}
		if (diff) {
		    ret = HX509_PROXY_CERT_NAME_WRONG;
		    FUNC28(context);
		    goto out;
		}
		if (cert->basename)
		    FUNC29(&cert->basename);

		ret = FUNC7(&proxy_issuer, &cert->basename);
		if (ret) {
		    FUNC28(context);
		    goto out;
		}
	    }

	    break;
	}

	ret = FUNC13(context, c, type,
				      i - proxy_cert_depth - selfsigned_depth);
	if (ret)
	    goto out;

	/*
	 * Don't check the trust anchors expiration time since they
	 * are transported out of band, from RFC3820.
	 */
	if (i + 1 != path.len || FUNC1(ctx)) {

	    t = FUNC3(&c->tbsCertificate.validity.notBefore);
	    if (t > ctx->time_now) {
		ret = HX509_CERT_USED_BEFORE_TIME;
		FUNC28(context);
		goto out;
	    }
	    t = FUNC3(&c->tbsCertificate.validity.notAfter);
	    if (t < ctx->time_now) {
		ret = HX509_CERT_USED_AFTER_TIME;
		FUNC28(context);
		goto out;
	    }
	}

	if (type == EE_CERT)
	    type = CA_CERT;
	else if (type == PROXY_CERT)
	    proxy_cert_depth++;
    }

    /*
     * Verify constraints, do this backward so path constraints are
     * checked in the right order.
     */

    for (ret = 0, k = path.len; k > 0; k--) {
	Certificate *c;
	int selfsigned;
	i = k - 1;

	c = FUNC5(path.val[i]);

	ret = FUNC12(context, c, &selfsigned);
	if (ret)
	    goto out;

	/* verify name constraints, not for selfsigned and anchor */
	if (!selfsigned || i + 1 != path.len) {
	    ret = FUNC15(context, &nc, c);
	    if (ret) {
		goto out;
	    }
	}
	ret = FUNC11(context, c, i == 0, &nc);
	if (ret)
	    goto out;

	/* XXX verify all other silly constraints */

    }

    /*
     * Verify that no certificates has been revoked.
     */

    if (ctx->revoke_ctx) {
	hx509_certs certs;

	ret = FUNC25(context, "MEMORY:revoke-certs", 0,
			       NULL, &certs);
	if (ret)
	    goto out;

	for (i = 0; i < path.len; i++) {
	    ret = FUNC23(context, certs, path.val[i]);
	    if (ret) {
		FUNC24(&certs);
		goto out;
	    }
	}
	ret = FUNC26(context, certs, pool);
	if (ret) {
	    FUNC24(&certs);
	    goto out;
	}

	for (i = 0; i < path.len - 1; i++) {
	    size_t parent = (i < path.len - 1) ? i + 1 : i;

	    ret = FUNC30(context,
				      ctx->revoke_ctx,
				      certs,
				      ctx->time_now,
				      path.val[i],
				      path.val[parent]);
	    if (ret) {
		FUNC24(&certs);
		goto out;
	    }
	}
	FUNC24(&certs);
    }

    /*
     * Verify signatures, do this backward so public key working
     * parameter is passed up from the anchor up though the chain.
     */

    for (k = path.len; k > 0; k--) {
	hx509_cert signer;
	Certificate *c;
	i = k - 1;

	c = FUNC5(path.val[i]);

	/* is last in chain (trust anchor) */
	if (i + 1 == path.len) {
	    int selfsigned;

	    signer = path.val[i];

	    ret = FUNC12(context, signer->data, &selfsigned);
	    if (ret)
		goto out;

	    /* if trust anchor is not self signed, don't check sig */
	    if (!selfsigned)
		continue;
	} else {
	    /* take next certificate in chain */
	    signer = path.val[i + 1];
	}

	/* verify signatureValue */
	ret = FUNC10(context,
						signer,
						&c->signatureAlgorithm,
						&c->tbsCertificate._save,
						&c->signatureValue);
	if (ret) {
	    FUNC31(context, HX509_ERROR_APPEND, ret,
				   "Failed to verify signature of certificate");
	    goto out;
	}
	/*
	 * Verify that the sigature algorithm "best-before" date is
	 * before the creation date of the certificate, do this for
	 * trust anchors too, since any trust anchor that is created
	 * after a algorithm is known to be bad deserved to be invalid.
	 *
	 * Skip the leaf certificate for now...
	 */

	if (i != 0 && (ctx->flags & HX509_VERIFY_CTX_F_NO_BEST_BEFORE_CHECK) == 0) {
	    time_t notBefore =
		FUNC3(&c->tbsCertificate.validity.notBefore);
	    ret = FUNC9(context,
					       &c->signatureAlgorithm,
					       notBefore);
	    if (ret)
		goto out;
	}
    }

out:
    FUNC24(&anchors);
    FUNC19(&proxy_issuer);
    FUNC22(&nc);
    FUNC8(&path);

    return ret;
}