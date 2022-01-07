
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_credential {int key_len; int key; int key_idx; int encr_type; int auth_type; int ssid_len; int ssid; } ;


 int os_memcpy (int ,int ,int) ;

__attribute__((used)) static void wps_cred_update(struct wps_credential *dst,
       struct wps_credential *src)
{
 os_memcpy(dst->ssid, src->ssid, sizeof(dst->ssid));
 dst->ssid_len = src->ssid_len;
 dst->auth_type = src->auth_type;
 dst->encr_type = src->encr_type;
 dst->key_idx = src->key_idx;
 os_memcpy(dst->key, src->key, sizeof(dst->key));
 dst->key_len = src->key_len;
}
