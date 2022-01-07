
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct eap_sm {size_t identity_len; TYPE_1__* user; int * identity; } ;
struct TYPE_2__ {size_t password_len; int const* password; } ;


 int MSG_DEBUG ;
 scalar_t__ eap_user_get (struct eap_sm*,int const*,size_t,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static const u8 * eap_ikev2_get_shared_secret(void *ctx, const u8 *IDr,
           size_t IDr_len,
           size_t *secret_len)
{
 struct eap_sm *sm = ctx;

 if (IDr == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "EAP-IKEV2: No IDr received - default "
      "to user identity from EAP-Identity");
  IDr = sm->identity;
  IDr_len = sm->identity_len;
 }

 if (eap_user_get(sm, IDr, IDr_len, 0) < 0 || sm->user == ((void*)0) ||
     sm->user->password == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "EAP-IKEV2: No user entry found");
  return ((void*)0);
 }

 *secret_len = sm->user->password_len;
 return sm->user->password;
}
