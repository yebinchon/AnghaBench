
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802_1x_mka_participant {int new_sak; } ;
struct ieee802_1x_kay {int dummy; } ;


 int MSG_DEBUG ;
 int TRUE ;
 struct ieee802_1x_mka_participant* ieee802_1x_kay_get_principal_participant (struct ieee802_1x_kay*) ;
 int wpa_printf (int ,char*) ;

int
ieee802_1x_kay_new_sak(struct ieee802_1x_kay *kay)
{
 struct ieee802_1x_mka_participant *participant;

 if (!kay)
  return -1;

 participant = ieee802_1x_kay_get_principal_participant(kay);
 if (!participant)
  return -1;

 participant->new_sak = TRUE;
 wpa_printf(MSG_DEBUG, "KaY: new SAK signal");

 return 0;
}
