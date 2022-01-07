
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int login_done; } ;
struct TYPE_4__ {TYPE_1__ flags; int config_file; } ;
typedef int CK_UTF8CHAR_PTR ;
typedef scalar_t__ CK_USER_TYPE ;
typedef scalar_t__ CK_ULONG ;
typedef int CK_SESSION_HANDLE ;
typedef scalar_t__ CK_RV ;


 scalar_t__ CKR_OK ;
 scalar_t__ CKR_PIN_INCORRECT ;
 int INIT_CONTEXT () ;
 int NULL_PTR ;
 int VERIFY_SESSION_HANDLE (int ,int *) ;
 int asprintf (char**,char*,int,int ) ;
 int free (char*) ;
 scalar_t__ read_conf_file (int ,scalar_t__,char*) ;
 TYPE_2__ soft_token ;
 int st_logf (char*,...) ;

CK_RV
C_Login(CK_SESSION_HANDLE hSession,
 CK_USER_TYPE userType,
 CK_UTF8CHAR_PTR pPin,
 CK_ULONG ulPinLen)
{
    char *pin = ((void*)0);
    CK_RV ret;
    INIT_CONTEXT();

    st_logf("Login\n");

    VERIFY_SESSION_HANDLE(hSession, ((void*)0));

    if (pPin != NULL_PTR) {
 asprintf(&pin, "%.*s", (int)ulPinLen, pPin);
 st_logf("type: %d password: %s\n", (int)userType, pin);
    }





    ret = read_conf_file(soft_token.config_file, userType, pin);
    if (ret == CKR_OK)
 soft_token.flags.login_done = 1;

    free(pin);

    return soft_token.flags.login_done ? CKR_OK : CKR_PIN_INCORRECT;
}
