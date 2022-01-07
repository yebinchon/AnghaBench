
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct st_object {int cert; } ;
struct session_state {int sign_object; TYPE_2__* sign_mechanism; } ;
struct TYPE_10__ {scalar_t__ length; int * data; } ;
typedef TYPE_3__ heim_octet_string ;
struct TYPE_8__ {struct st_object** objs; } ;
struct TYPE_11__ {TYPE_1__ object; } ;
struct TYPE_9__ {int mechanism; } ;
typedef scalar_t__* CK_ULONG_PTR ;
typedef scalar_t__ CK_ULONG ;
typedef int CK_SESSION_HANDLE ;
typedef int CK_RV ;
typedef scalar_t__ CK_BYTE_PTR ;
typedef int AlgorithmIdentifier ;



 int CKR_ARGUMENTS_BAD ;
 int CKR_DEVICE_ERROR ;
 int CKR_FUNCTION_NOT_SUPPORTED ;
 int CKR_OK ;
 int INIT_CONTEXT () ;
 scalar_t__ NULL_PTR ;
 int VERIFY_SESSION_HANDLE (int ,struct session_state**) ;
 int _hx509_cert_private_key (int ) ;
 int _hx509_create_signature (int ,int ,int const*,TYPE_3__*,int *,TYPE_3__*) ;
 int context ;
 int der_free_octet_string (TYPE_3__*) ;
 scalar_t__ hx509_cert_have_private_key (int ) ;
 int * hx509_signature_rsa_pkcs1_x509 () ;
 int memcpy (scalar_t__,int *,scalar_t__) ;
 int memset (int *,int ,scalar_t__) ;
 TYPE_4__ soft_token ;
 int st_logf (char*) ;

CK_RV
C_Sign(CK_SESSION_HANDLE hSession,
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

    INIT_CONTEXT();
    st_logf("Sign\n");
    VERIFY_SESSION_HANDLE(hSession, &state);

    sig.data = ((void*)0);
    sig.length = 0;

    if (state->sign_object == -1)
 return CKR_ARGUMENTS_BAD;

    if (pulSignatureLen == ((void*)0)) {
 st_logf("signature len NULL\n");
 ret = CKR_ARGUMENTS_BAD;
 goto out;
    }

    if (pData == NULL_PTR) {
 st_logf("data NULL\n");
 ret = CKR_ARGUMENTS_BAD;
 goto out;
    }

    o = soft_token.object.objs[state->sign_object];

    if (hx509_cert_have_private_key(o->cert) == 0) {
 st_logf("private key NULL\n");
 return CKR_ARGUMENTS_BAD;
    }

    switch(state->sign_mechanism->mechanism) {
    case 128:
 alg = hx509_signature_rsa_pkcs1_x509();
 break;
    default:
 ret = CKR_FUNCTION_NOT_SUPPORTED;
 goto out;
    }

    data.data = pData;
    data.length = ulDataLen;

    hret = _hx509_create_signature(context,
       _hx509_cert_private_key(o->cert),
       alg,
       &data,
       ((void*)0),
       &sig);
    if (hret) {
 ret = CKR_DEVICE_ERROR;
 goto out;
    }
    *pulSignatureLen = sig.length;

    if (pSignature != NULL_PTR)
 memcpy(pSignature, sig.data, sig.length);

    ret = CKR_OK;
 out:
    if (sig.data) {
 memset(sig.data, 0, sig.length);
 der_free_octet_string(&sig);
    }
    return ret;
}
