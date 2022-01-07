
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wpa_s ;
typedef int u8 ;
struct wpa_supplicant {int dummy; } ;


 int MSG_ERROR ;
 int os_memset (struct wpa_supplicant*,int ,int) ;
 scalar_t__ wpa_blacklist_add (struct wpa_supplicant*,int *) ;
 int wpa_blacklist_clear (struct wpa_supplicant*) ;
 scalar_t__ wpa_blacklist_del (struct wpa_supplicant*,int *) ;
 int * wpa_blacklist_get (struct wpa_supplicant*,int *) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wpas_blacklist_module_tests(void)
{
 struct wpa_supplicant wpa_s;
 int ret = -1;

 os_memset(&wpa_s, 0, sizeof(wpa_s));

 wpa_blacklist_clear(&wpa_s);

 if (wpa_blacklist_get(((void*)0), ((void*)0)) != ((void*)0) ||
     wpa_blacklist_get(((void*)0), (u8 *) "123456") != ((void*)0) ||
     wpa_blacklist_get(&wpa_s, ((void*)0)) != ((void*)0) ||
     wpa_blacklist_get(&wpa_s, (u8 *) "123456") != ((void*)0))
  goto fail;

 if (wpa_blacklist_add(((void*)0), ((void*)0)) == 0 ||
     wpa_blacklist_add(((void*)0), (u8 *) "123456") == 0 ||
     wpa_blacklist_add(&wpa_s, ((void*)0)) == 0)
  goto fail;

 if (wpa_blacklist_del(((void*)0), ((void*)0)) == 0 ||
     wpa_blacklist_del(((void*)0), (u8 *) "123456") == 0 ||
     wpa_blacklist_del(&wpa_s, ((void*)0)) == 0 ||
     wpa_blacklist_del(&wpa_s, (u8 *) "123456") == 0)
  goto fail;

 if (wpa_blacklist_add(&wpa_s, (u8 *) "111111") < 0 ||
     wpa_blacklist_add(&wpa_s, (u8 *) "111111") < 0 ||
     wpa_blacklist_add(&wpa_s, (u8 *) "222222") < 0 ||
     wpa_blacklist_add(&wpa_s, (u8 *) "333333") < 0 ||
     wpa_blacklist_add(&wpa_s, (u8 *) "444444") < 0 ||
     wpa_blacklist_del(&wpa_s, (u8 *) "333333") < 0 ||
     wpa_blacklist_del(&wpa_s, (u8 *) "xxxxxx") == 0 ||
     wpa_blacklist_get(&wpa_s, (u8 *) "xxxxxx") != ((void*)0) ||
     wpa_blacklist_get(&wpa_s, (u8 *) "111111") == ((void*)0) ||
     wpa_blacklist_get(&wpa_s, (u8 *) "222222") == ((void*)0) ||
     wpa_blacklist_get(&wpa_s, (u8 *) "444444") == ((void*)0) ||
     wpa_blacklist_del(&wpa_s, (u8 *) "111111") < 0 ||
     wpa_blacklist_del(&wpa_s, (u8 *) "222222") < 0 ||
     wpa_blacklist_del(&wpa_s, (u8 *) "444444") < 0 ||
     wpa_blacklist_add(&wpa_s, (u8 *) "111111") < 0 ||
     wpa_blacklist_add(&wpa_s, (u8 *) "222222") < 0 ||
     wpa_blacklist_add(&wpa_s, (u8 *) "333333") < 0)
  goto fail;

 ret = 0;
fail:
 wpa_blacklist_clear(&wpa_s);

 if (ret)
  wpa_printf(MSG_ERROR, "blacklist module test failure");

 return ret;
}
