
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802_1x_kay_peer {int sci; int mn; int mi; } ;


 int MSG_DEBUG ;
 int mi_txt (int ) ;
 int sci_txt (int *) ;
 int wpa_printf (int ,char*,int ,int ,int ) ;

__attribute__((used)) static void ieee802_1x_kay_dump_peer(struct ieee802_1x_kay_peer *peer)
{
 wpa_printf(MSG_DEBUG, "\tMI: %s  MN: %d  SCI: %s",
     mi_txt(peer->mi), peer->mn, sci_txt(&peer->sci));
}
