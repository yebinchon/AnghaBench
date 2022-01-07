
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_group {int vlan_id; void* GInit; int GTK_len; void* GTKAuthenticator; } ;
struct TYPE_2__ {int wpa_group; } ;
struct wpa_authenticator {TYPE_1__ conf; } ;


 void* FALSE ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_INFO ;
 void* TRUE ;
 int os_free (struct wpa_group*) ;
 struct wpa_group* os_zalloc (int) ;
 int random_pool_ready () ;
 int wpa_cipher_key_len (int ) ;
 scalar_t__ wpa_group_init_gmk_and_counter (struct wpa_authenticator*,struct wpa_group*) ;
 int wpa_group_sm_step (struct wpa_authenticator*,struct wpa_group*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static struct wpa_group * wpa_group_init(struct wpa_authenticator *wpa_auth,
      int vlan_id, int delay_init)
{
 struct wpa_group *group;

 group = os_zalloc(sizeof(struct wpa_group));
 if (group == ((void*)0))
  return ((void*)0);

 group->GTKAuthenticator = TRUE;
 group->vlan_id = vlan_id;
 group->GTK_len = wpa_cipher_key_len(wpa_auth->conf.wpa_group);

 if (random_pool_ready() != 1) {
  wpa_printf(MSG_INFO, "WPA: Not enough entropy in random pool "
      "for secure operations - update keys later when "
      "the first station connects");
 }







 if (wpa_group_init_gmk_and_counter(wpa_auth, group) < 0) {
  wpa_printf(MSG_ERROR, "Failed to get random data for WPA "
      "initialization.");
  os_free(group);
  return ((void*)0);
 }

 group->GInit = TRUE;
 if (delay_init) {
  wpa_printf(MSG_DEBUG, "WPA: Delay group state machine start "
      "until Beacon frames have been configured");

 } else {
  wpa_group_sm_step(wpa_auth, group);
  group->GInit = FALSE;
  wpa_group_sm_step(wpa_auth, group);
 }

 return group;
}
