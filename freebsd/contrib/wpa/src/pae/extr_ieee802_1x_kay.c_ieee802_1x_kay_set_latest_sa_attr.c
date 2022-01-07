
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct ieee802_1x_mka_participant {void* lrx; void* ltx; void* lan; int lki; } ;
struct ieee802_1x_mka_ki {scalar_t__ kn; } ;
struct ieee802_1x_kay {void* lrx_an; void* ltx_an; scalar_t__ lrx_kn; scalar_t__ ltx_kn; } ;
typedef void* Boolean ;


 struct ieee802_1x_mka_participant* ieee802_1x_kay_get_principal_participant (struct ieee802_1x_kay*) ;
 int os_memcpy (int *,struct ieee802_1x_mka_ki*,int) ;
 int os_memset (int *,int ,int) ;

int ieee802_1x_kay_set_latest_sa_attr(struct ieee802_1x_kay *kay,
          struct ieee802_1x_mka_ki *lki, u8 lan,
          Boolean ltx, Boolean lrx)
{
 struct ieee802_1x_mka_participant *principal;

 principal = ieee802_1x_kay_get_principal_participant(kay);
 if (!principal)
  return -1;

 if (!lki)
  os_memset(&principal->lki, 0, sizeof(principal->lki));
 else
  os_memcpy(&principal->lki, lki, sizeof(principal->lki));

 principal->lan = lan;
 principal->ltx = ltx;
 principal->lrx = lrx;
 if (!lki) {
  kay->ltx_kn = 0;
  kay->lrx_kn = 0;
 } else {
  kay->ltx_kn = lki->kn;
  kay->lrx_kn = lki->kn;
 }
 kay->ltx_an = lan;
 kay->lrx_an = lan;

 return 0;
}
