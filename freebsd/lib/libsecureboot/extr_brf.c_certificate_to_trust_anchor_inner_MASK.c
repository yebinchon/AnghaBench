#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_11__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bvector ;
struct TYPE_24__ {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
struct TYPE_19__ {int /*<<< orphan*/  qlen; void* q; int /*<<< orphan*/  curve; } ;
struct TYPE_17__ {int /*<<< orphan*/  elen; void* e; int /*<<< orphan*/  nlen; void* n; } ;
struct TYPE_20__ {TYPE_3__ ec; TYPE_1__ rsa; } ;
struct TYPE_21__ {int key_type; TYPE_4__ key; } ;
struct TYPE_25__ {TYPE_8__ dn; TYPE_5__ pkey; int /*<<< orphan*/  flags; } ;
typedef  TYPE_9__ br_x509_trust_anchor ;
struct TYPE_22__ {int /*<<< orphan*/  qlen; int /*<<< orphan*/  q; int /*<<< orphan*/  curve; } ;
struct TYPE_18__ {int /*<<< orphan*/  elen; int /*<<< orphan*/  e; int /*<<< orphan*/  nlen; int /*<<< orphan*/  n; } ;
struct TYPE_23__ {TYPE_6__ ec; TYPE_2__ rsa; } ;
struct TYPE_15__ {int key_type; TYPE_7__ key; } ;
typedef  TYPE_10__ br_x509_pkey ;
typedef  int /*<<< orphan*/  br_x509_decoder_context ;
struct TYPE_16__ {int /*<<< orphan*/  data_len; int /*<<< orphan*/  data; } ;
typedef  TYPE_11__ br_x509_certificate ;

/* Variables and functions */
#define  BR_KEYTYPE_EC 129 
#define  BR_KEYTYPE_RSA 128 
 int /*<<< orphan*/  BR_X509_TA_CA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VEC_INIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_10__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dn_append ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 void* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int
FUNC11(br_x509_trust_anchor *ta,
	br_x509_certificate *xc)
{
	br_x509_decoder_context dc;
	bvector vdn = VEC_INIT;
	br_x509_pkey *pk;

	FUNC4(&dc, dn_append, &vdn);
	FUNC7(&dc, xc->data, xc->data_len);
	pk = FUNC3(&dc);
	if (pk == NULL) {
	    FUNC8("ERROR: CA decoding failed with error %d\n",
		      FUNC6(&dc));
	    FUNC0(vdn);
	    return (-1);
	}
	ta->dn.data = FUNC2(vdn);
	ta->dn.len = FUNC1(vdn);
	FUNC0(vdn);
	ta->flags = 0;
	if (FUNC5(&dc)) {
		ta->flags |= BR_X509_TA_CA;
	}
	switch (pk->key_type) {
	case BR_KEYTYPE_RSA:
		ta->pkey.key_type = BR_KEYTYPE_RSA;
		ta->pkey.key.rsa.n = FUNC9(pk->key.rsa.n, pk->key.rsa.nlen);
		ta->pkey.key.rsa.nlen = pk->key.rsa.nlen;
		ta->pkey.key.rsa.e = FUNC9(pk->key.rsa.e, pk->key.rsa.elen);
		ta->pkey.key.rsa.elen = pk->key.rsa.elen;
		break;
	case BR_KEYTYPE_EC:
		ta->pkey.key_type = BR_KEYTYPE_EC;
		ta->pkey.key.ec.curve = pk->key.ec.curve;
		ta->pkey.key.ec.q = FUNC9(pk->key.ec.q, pk->key.ec.qlen);
		ta->pkey.key.ec.qlen = pk->key.ec.qlen;
		break;
	default:
	    FUNC8("ERROR: unsupported public key type in CA\n");
		FUNC10(ta->dn.data);
		return (-1);
	}
	return (0);
}