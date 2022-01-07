
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct p2p_data {TYPE_1__* cfg; } ;
struct TYPE_2__ {size_t ssid_postfix_len; int ssid_postfix; } ;


 int P2P_WILDCARD_SSID ;
 size_t P2P_WILDCARD_SSID_LEN ;
 int os_memcpy (int *,int ,size_t) ;
 int p2p_random (char*,int) ;

void p2p_build_ssid(struct p2p_data *p2p, u8 *ssid, size_t *ssid_len)
{
 os_memcpy(ssid, P2P_WILDCARD_SSID, P2P_WILDCARD_SSID_LEN);
 p2p_random((char *) &ssid[P2P_WILDCARD_SSID_LEN], 2);
 os_memcpy(&ssid[P2P_WILDCARD_SSID_LEN + 2],
    p2p->cfg->ssid_postfix, p2p->cfg->ssid_postfix_len);
 *ssid_len = P2P_WILDCARD_SSID_LEN + 2 + p2p->cfg->ssid_postfix_len;
}
