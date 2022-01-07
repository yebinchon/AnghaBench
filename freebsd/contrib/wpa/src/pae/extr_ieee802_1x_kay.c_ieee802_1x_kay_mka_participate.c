
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mka_key_name {int len; int name; } ;
struct ieee802_1x_mka_participant {int active; } ;
struct ieee802_1x_kay {int dummy; } ;
typedef int Boolean ;


 struct ieee802_1x_mka_participant* ieee802_1x_kay_get_participant (struct ieee802_1x_kay*,int ,int ) ;

void ieee802_1x_kay_mka_participate(struct ieee802_1x_kay *kay,
        struct mka_key_name *ckn,
        Boolean status)
{
 struct ieee802_1x_mka_participant *participant;

 if (!kay || !ckn)
  return;

 participant = ieee802_1x_kay_get_participant(kay, ckn->name, ckn->len);
 if (!participant)
  return;

 participant->active = status;
}
