
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
typedef int true_val ;
struct TYPE_8__ {int flags; char* label; } ;
struct pkcs11_slotinfo {int logged_in; int session; TYPE_1__ token; } ;
struct pkcs11_key {size_t slotidx; TYPE_6__* provider; int keyid_len; int * keyid; } ;
typedef int prompt ;
typedef int private_key_class ;
struct TYPE_12__ {struct pkcs11_slotinfo* slotinfo; TYPE_3__* function_list; int valid; } ;
struct TYPE_11__ {int member_2; int ulValueLen; int * pValue; int * member_1; int member_0; } ;
struct TYPE_10__ {char* (* C_Login ) (int ,int ,int *,int ) ;char* (* C_SignInit ) (int ,TYPE_2__*,int ) ;char* (* C_Sign ) (int ,int *,int,int *,int*) ;} ;
struct TYPE_9__ {int member_2; int member_1; int member_0; } ;
typedef char RSA ;
typedef int CK_ULONG ;
typedef char* CK_RV ;
typedef int CK_OBJECT_HANDLE ;
typedef int CK_OBJECT_CLASS ;
typedef TYPE_2__ CK_MECHANISM ;
typedef TYPE_3__ CK_FUNCTION_LIST ;
typedef int CK_BYTE ;
typedef int CK_BBOOL ;
typedef TYPE_4__ CK_ATTRIBUTE ;


 int CKA_CLASS ;
 int CKA_ID ;
 int CKA_SIGN ;
 int CKF_LOGIN_REQUIRED ;
 int CKF_PROTECTED_AUTHENTICATION_PATH ;
 int CKM_RSA_PKCS ;
 int CKO_PRIVATE_KEY ;
 char* CKR_OK ;
 char* CKR_USER_ALREADY_LOGGED_IN ;
 int CKU_USER ;
 int CK_TRUE ;
 int NULL_PTR ;
 int RP_ALLOW_EOF ;
 struct pkcs11_key* RSA_get_app_data (char*) ;
 int RSA_size (char*) ;
 int error (char*,...) ;
 int explicit_bzero (char*,int ) ;
 int free (char*) ;
 scalar_t__ pkcs11_find (TYPE_6__*,size_t,TYPE_4__*,int,int *) ;
 int pkcs11_interactive ;
 char* read_passphrase (char*,int ) ;
 int snprintf (char*,int,char*,char*) ;
 int strlen (char*) ;
 char* stub1 (int ,int ,int *,int ) ;
 char* stub2 (int ,TYPE_2__*,int ) ;
 char* stub3 (int ,int *,int,int *,int*) ;
 int verbose (char*) ;

__attribute__((used)) static int
pkcs11_rsa_private_encrypt(int flen, const u_char *from, u_char *to, RSA *rsa,
    int padding)
{
 struct pkcs11_key *k11;
 struct pkcs11_slotinfo *si;
 CK_FUNCTION_LIST *f;
 CK_OBJECT_HANDLE obj;
 CK_ULONG tlen = 0;
 CK_RV rv;
 CK_OBJECT_CLASS private_key_class = CKO_PRIVATE_KEY;
 CK_BBOOL true_val = CK_TRUE;
 CK_MECHANISM mech = {
  CKM_RSA_PKCS, NULL_PTR, 0
 };
 CK_ATTRIBUTE key_filter[] = {
  {CKA_CLASS, ((void*)0), sizeof(private_key_class) },
  {CKA_ID, ((void*)0), 0},
  {CKA_SIGN, ((void*)0), sizeof(true_val) }
 };
 char *pin = ((void*)0), prompt[1024];
 int rval = -1;

 key_filter[0].pValue = &private_key_class;
 key_filter[2].pValue = &true_val;

 if ((k11 = RSA_get_app_data(rsa)) == ((void*)0)) {
  error("RSA_get_app_data failed for rsa %p", rsa);
  return (-1);
 }
 if (!k11->provider || !k11->provider->valid) {
  error("no pkcs11 (valid) provider for rsa %p", rsa);
  return (-1);
 }
 f = k11->provider->function_list;
 si = &k11->provider->slotinfo[k11->slotidx];
 if ((si->token.flags & CKF_LOGIN_REQUIRED) && !si->logged_in) {
  if (!pkcs11_interactive) {
   error("need pin entry%s", (si->token.flags &
       CKF_PROTECTED_AUTHENTICATION_PATH) ?
       " on reader keypad" : "");
   return (-1);
  }
  if (si->token.flags & CKF_PROTECTED_AUTHENTICATION_PATH)
   verbose("Deferring PIN entry to reader keypad.");
  else {
   snprintf(prompt, sizeof(prompt),
       "Enter PIN for '%s': ", si->token.label);
   pin = read_passphrase(prompt, RP_ALLOW_EOF);
   if (pin == ((void*)0))
    return (-1);
  }
  rv = f->C_Login(si->session, CKU_USER, (u_char *)pin,
      (pin != ((void*)0)) ? strlen(pin) : 0);
  if (pin != ((void*)0)) {
   explicit_bzero(pin, strlen(pin));
   free(pin);
  }
  if (rv != CKR_OK && rv != CKR_USER_ALREADY_LOGGED_IN) {
   error("C_Login failed: %lu", rv);
   return (-1);
  }
  si->logged_in = 1;
 }
 key_filter[1].pValue = k11->keyid;
 key_filter[1].ulValueLen = k11->keyid_len;

 if (pkcs11_find(k11->provider, k11->slotidx, key_filter, 3, &obj) < 0 &&
     pkcs11_find(k11->provider, k11->slotidx, key_filter, 2, &obj) < 0) {
  error("cannot find private key");
 } else if ((rv = f->C_SignInit(si->session, &mech, obj)) != CKR_OK) {
  error("C_SignInit failed: %lu", rv);
 } else {

  tlen = RSA_size(rsa);
  rv = f->C_Sign(si->session, (CK_BYTE *)from, flen, to, &tlen);
  if (rv == CKR_OK)
   rval = tlen;
  else
   error("C_Sign failed: %lu", rv);
 }
 return (rval);
}
