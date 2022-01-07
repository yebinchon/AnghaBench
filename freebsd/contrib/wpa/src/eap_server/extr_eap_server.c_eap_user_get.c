
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct eap_user {int dummy; } ;
struct eap_sm {scalar_t__ user_eap_method_index; struct eap_user* user; int eapol_ctx; TYPE_1__* eapol_cb; } ;
struct TYPE_2__ {scalar_t__ (* get_eap_user ) (int ,int const*,size_t,int,struct eap_user*) ;} ;


 int eap_user_free (struct eap_user*) ;
 struct eap_user* os_zalloc (int) ;
 scalar_t__ stub1 (int ,int const*,size_t,int,struct eap_user*) ;

int eap_user_get(struct eap_sm *sm, const u8 *identity, size_t identity_len,
   int phase2)
{
 struct eap_user *user;

 if (sm == ((void*)0) || sm->eapol_cb == ((void*)0) ||
     sm->eapol_cb->get_eap_user == ((void*)0))
  return -1;

 eap_user_free(sm->user);
 sm->user = ((void*)0);

 user = os_zalloc(sizeof(*user));
 if (user == ((void*)0))
     return -1;

 if (sm->eapol_cb->get_eap_user(sm->eapol_ctx, identity,
           identity_len, phase2, user) != 0) {
  eap_user_free(user);
  return -1;
 }

 sm->user = user;
 sm->user_eap_method_index = 0;

 return 0;
}
