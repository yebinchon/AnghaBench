
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct receive_sa {int list; int an; int * pkey; } ;


 int MSG_DEBUG ;
 int dl_list_del (int *) ;
 int ieee802_1x_kay_deinit_data_key (int *) ;
 int os_free (struct receive_sa*) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static void ieee802_1x_kay_deinit_receive_sa(struct receive_sa *psa)
{
 ieee802_1x_kay_deinit_data_key(psa->pkey);
 psa->pkey = ((void*)0);
 wpa_printf(MSG_DEBUG,
     "KaY: Delete receive SA(an: %hhu) of SC",
     psa->an);
 dl_list_del(&psa->list);
 os_free(psa);
}
