
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct st_object {int dummy; } ;
struct session_state {int sign_object; int sign_mechanism; } ;
typedef int mechs ;
typedef int bool_true ;
typedef int attr ;
struct TYPE_3__ {int member_2; int * member_1; int member_0; } ;
typedef int CK_SESSION_HANDLE ;
typedef scalar_t__ CK_RV ;
typedef int CK_OBJECT_HANDLE ;
typedef int CK_MECHANISM_TYPE ;
typedef int CK_MECHANISM_PTR ;
typedef int CK_BBOOL ;
typedef TYPE_1__ CK_ATTRIBUTE ;


 int CKA_SIGN ;
 int CKM_RSA_PKCS ;
 scalar_t__ CKR_OK ;
 int CK_TRUE ;
 int INIT_CONTEXT () ;
 int OBJECT_ID (struct st_object*) ;
 int VERIFY_SESSION_HANDLE (int ,struct session_state**) ;
 scalar_t__ commonInit (TYPE_1__*,int,int *,int,int ,int ,struct st_object**) ;
 scalar_t__ dup_mechanism (int *,int ) ;
 int st_logf (char*) ;

CK_RV
C_SignInit(CK_SESSION_HANDLE hSession,
    CK_MECHANISM_PTR pMechanism,
    CK_OBJECT_HANDLE hKey)
{
    struct session_state *state;
    CK_MECHANISM_TYPE mechs[] = { CKM_RSA_PKCS };
    CK_BBOOL bool_true = CK_TRUE;
    CK_ATTRIBUTE attr[] = {
 { CKA_SIGN, &bool_true, sizeof(bool_true) }
    };
    struct st_object *o;
    CK_RV ret;

    INIT_CONTEXT();
    st_logf("SignInit\n");
    VERIFY_SESSION_HANDLE(hSession, &state);

    ret = commonInit(attr, sizeof(attr)/sizeof(attr[0]),
       mechs, sizeof(mechs)/sizeof(mechs[0]),
       pMechanism, hKey, &o);
    if (ret)
 return ret;

    ret = dup_mechanism(&state->sign_mechanism, pMechanism);
    if (ret == CKR_OK)
 state->sign_object = OBJECT_ID(o);

    return CKR_OK;
}
