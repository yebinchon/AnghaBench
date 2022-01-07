
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {int group_num; int group; } ;
typedef TYPE_1__ EAP_PWD_group ;


 int MSG_INFO ;
 int crypto_ec_init (int ) ;
 int dragonfly_suitable_group (int ,int) ;
 int os_free (TYPE_1__*) ;
 TYPE_1__* os_zalloc (int) ;
 int wpa_printf (int ,char*,...) ;

EAP_PWD_group * get_eap_pwd_group(u16 num)
{
 EAP_PWD_group *grp;

 if (!dragonfly_suitable_group(num, 1)) {
  wpa_printf(MSG_INFO, "EAP-pwd: unsuitable group %u", num);
  return ((void*)0);
 }
 grp = os_zalloc(sizeof(EAP_PWD_group));
 if (!grp)
  return ((void*)0);
 grp->group = crypto_ec_init(num);
 if (!grp->group) {
  wpa_printf(MSG_INFO, "EAP-pwd: unable to create EC group");
  os_free(grp);
  return ((void*)0);
 }

 grp->group_num = num;
 wpa_printf(MSG_INFO, "EAP-pwd: provisioned group %d", num);

 return grp;
}
