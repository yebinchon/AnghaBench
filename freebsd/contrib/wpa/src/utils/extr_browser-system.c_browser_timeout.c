
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_INFO ;
 int eloop_terminate () ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void browser_timeout(void *eloop_data, void *user_ctx)
{
 wpa_printf(MSG_INFO, "Timeout on waiting browser interaction to "
     "complete");
 eloop_terminate();
}
