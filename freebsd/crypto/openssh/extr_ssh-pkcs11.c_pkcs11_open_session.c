
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct pkcs11_provider {TYPE_2__* slotinfo; int * slotlist; TYPE_3__* function_list; } ;
struct TYPE_6__ {scalar_t__ (* C_OpenSession ) (int ,int,int *,int *,int *) ;scalar_t__ (* C_Login ) (int ,int ,int *,int ) ;scalar_t__ (* C_CloseSession ) (int ) ;} ;
struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {int logged_in; int session; TYPE_1__ token; } ;
typedef size_t CK_ULONG ;
typedef int CK_SESSION_HANDLE ;
typedef scalar_t__ CK_RV ;
typedef TYPE_3__ CK_FUNCTION_LIST ;


 int CKF_LOGIN_REQUIRED ;
 int CKF_RW_SESSION ;
 int CKF_SERIAL_SESSION ;
 scalar_t__ CKR_OK ;
 scalar_t__ CKR_USER_ALREADY_LOGGED_IN ;
 int CKU_USER ;
 int error (char*,...) ;
 int strlen (char*) ;
 scalar_t__ stub1 (int ,int,int *,int *,int *) ;
 scalar_t__ stub2 (int ,int ,int *,int ) ;
 scalar_t__ stub3 (int ) ;

__attribute__((used)) static int
pkcs11_open_session(struct pkcs11_provider *p, CK_ULONG slotidx, char *pin)
{
 CK_RV rv;
 CK_FUNCTION_LIST *f;
 CK_SESSION_HANDLE session;
 int login_required;

 f = p->function_list;
 login_required = p->slotinfo[slotidx].token.flags & CKF_LOGIN_REQUIRED;
 if (pin && login_required && !strlen(pin)) {
  error("pin required");
  return (-1);
 }
 if ((rv = f->C_OpenSession(p->slotlist[slotidx], CKF_RW_SESSION|
     CKF_SERIAL_SESSION, ((void*)0), ((void*)0), &session))
     != CKR_OK) {
  error("C_OpenSession failed: %lu", rv);
  return (-1);
 }
 if (login_required && pin) {
  rv = f->C_Login(session, CKU_USER,
      (u_char *)pin, strlen(pin));
  if (rv != CKR_OK && rv != CKR_USER_ALREADY_LOGGED_IN) {
   error("C_Login failed: %lu", rv);
   if ((rv = f->C_CloseSession(session)) != CKR_OK)
    error("C_CloseSession failed: %lu", rv);
   return (-1);
  }
  p->slotinfo[slotidx].logged_in = 1;
 }
 p->slotinfo[slotidx].session = session;
 return (0);
}
