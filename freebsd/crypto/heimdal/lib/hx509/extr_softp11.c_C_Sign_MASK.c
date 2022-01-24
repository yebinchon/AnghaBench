#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct st_object {int /*<<< orphan*/  cert; } ;
struct session_state {int sign_object; TYPE_2__* sign_mechanism; } ;
struct TYPE_10__ {scalar_t__ length; int /*<<< orphan*/ * data; } ;
typedef  TYPE_3__ heim_octet_string ;
struct TYPE_8__ {struct st_object** objs; } ;
struct TYPE_11__ {TYPE_1__ object; } ;
struct TYPE_9__ {int mechanism; } ;
typedef  scalar_t__* CK_ULONG_PTR ;
typedef  scalar_t__ CK_ULONG ;
typedef  int /*<<< orphan*/  CK_SESSION_HANDLE ;
typedef  int /*<<< orphan*/  CK_RV ;
typedef  scalar_t__ CK_BYTE_PTR ;
typedef  int /*<<< orphan*/  AlgorithmIdentifier ;

/* Variables and functions */
#define  CKM_RSA_PKCS 128 
 int /*<<< orphan*/  CKR_ARGUMENTS_BAD ; 
 int /*<<< orphan*/  CKR_DEVICE_ERROR ; 
 int /*<<< orphan*/  CKR_FUNCTION_NOT_SUPPORTED ; 
 int /*<<< orphan*/  CKR_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ NULL_PTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct session_state**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,TYPE_3__*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_4__ soft_token ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

CK_RV
FUNC10(CK_SESSION_HANDLE hSession,
       CK_BYTE_PTR pData,
       CK_ULONG ulDataLen,
       CK_BYTE_PTR pSignature,
       CK_ULONG_PTR pulSignatureLen)
{
    struct session_state *state;
    struct st_object *o;
    CK_RV ret;
    int hret;
    const AlgorithmIdentifier *alg;
    heim_octet_string sig, data;

    FUNC0();
    FUNC9("Sign\n");
    FUNC1(hSession, &state);

    sig.data = NULL;
    sig.length = 0;

    if (state->sign_object == -1)
	return CKR_ARGUMENTS_BAD;

    if (pulSignatureLen == NULL) {
	FUNC9("signature len NULL\n");
	ret = CKR_ARGUMENTS_BAD;
	goto out;
    }

    if (pData == NULL_PTR) {
	FUNC9("data NULL\n");
	ret = CKR_ARGUMENTS_BAD;
	goto out;
    }

    o = soft_token.object.objs[state->sign_object];

    if (FUNC5(o->cert) == 0) {
	FUNC9("private key NULL\n");
	return CKR_ARGUMENTS_BAD;
    }

    switch(state->sign_mechanism->mechanism) {
    case CKM_RSA_PKCS:
	alg = FUNC6();
	break;
    default:
	ret = CKR_FUNCTION_NOT_SUPPORTED;
	goto out;
    }

    data.data = pData;
    data.length = ulDataLen;

    hret = FUNC3(context,
				   FUNC2(o->cert),
				   alg,
				   &data,
				   NULL,
				   &sig);
    if (hret) {
	ret = CKR_DEVICE_ERROR;
	goto out;
    }
    *pulSignatureLen = sig.length;

    if (pSignature != NULL_PTR)
	FUNC7(pSignature, sig.data, sig.length);

    ret = CKR_OK;
 out:
    if (sig.data) {
	FUNC8(sig.data, 0, sig.length);
	FUNC4(&sig);
    }
    return ret;
}