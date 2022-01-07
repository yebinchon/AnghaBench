
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p2p_go_neg_results {int passphrase; int ssid_len; int ssid; } ;
struct p2p_data {TYPE_1__* cfg; scalar_t__ ssid_set; int ssid_len; int ssid; } ;
struct TYPE_2__ {int passphrase_len; } ;


 int os_memcpy (int ,int ,int ) ;
 int p2p_build_ssid (struct p2p_data*,int ,int *) ;
 int p2p_random (int ,int ) ;

int p2p_go_params(struct p2p_data *p2p, struct p2p_go_neg_results *params)
{
 if (p2p->ssid_set) {
  os_memcpy(params->ssid, p2p->ssid, p2p->ssid_len);
  params->ssid_len = p2p->ssid_len;
 } else {
  p2p_build_ssid(p2p, params->ssid, &params->ssid_len);
 }
 p2p->ssid_set = 0;

 p2p_random(params->passphrase, p2p->cfg->passphrase_len);
 return 0;
}
