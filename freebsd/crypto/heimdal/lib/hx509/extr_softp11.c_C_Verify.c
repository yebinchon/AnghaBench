
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct st_object {int cert; } ;
struct session_state {int verify_object; TYPE_2__* verify_mechanism; } ;
struct TYPE_9__ {void* length; void* data; } ;
typedef TYPE_3__ heim_octet_string ;
struct TYPE_7__ {struct st_object** objs; } ;
struct TYPE_10__ {TYPE_1__ object; } ;
struct TYPE_8__ {int mechanism; } ;
typedef void* CK_ULONG ;
typedef int CK_SESSION_HANDLE ;
typedef int CK_RV ;
typedef void* CK_BYTE_PTR ;
typedef int AlgorithmIdentifier ;



 int CKR_ARGUMENTS_BAD ;
 int CKR_FUNCTION_NOT_SUPPORTED ;
 int CKR_GENERAL_ERROR ;
 int CKR_OK ;
 int INIT_CONTEXT () ;
 int VERIFY_SESSION_HANDLE (int ,struct session_state**) ;
 int _hx509_verify_signature (int ,int ,int const*,TYPE_3__*,TYPE_3__*) ;
 int context ;
 int * hx509_signature_rsa_pkcs1_x509 () ;
 TYPE_4__ soft_token ;
 int st_logf (char*) ;

CK_RV
C_Verify(CK_SESSION_HANDLE hSession,
  CK_BYTE_PTR pData,
  CK_ULONG ulDataLen,
  CK_BYTE_PTR pSignature,
  CK_ULONG ulSignatureLen)
{
    struct session_state *state;
    struct st_object *o;
    const AlgorithmIdentifier *alg;
    CK_RV ret;
    int hret;
    heim_octet_string data, sig;

    INIT_CONTEXT();
    st_logf("Verify\n");
    VERIFY_SESSION_HANDLE(hSession, &state);

    if (state->verify_object == -1)
 return CKR_ARGUMENTS_BAD;

    o = soft_token.object.objs[state->verify_object];

    switch(state->verify_mechanism->mechanism) {
    case 128:
 alg = hx509_signature_rsa_pkcs1_x509();
 break;
    default:
 ret = CKR_FUNCTION_NOT_SUPPORTED;
 goto out;
    }

    sig.data = pData;
    sig.length = ulDataLen;
    data.data = pSignature;
    data.length = ulSignatureLen;

    hret = _hx509_verify_signature(context,
       o->cert,
       alg,
       &data,
       &sig);
    if (hret) {
 ret = CKR_GENERAL_ERROR;
 goto out;
    }
    ret = CKR_OK;

 out:
    return ret;
}
