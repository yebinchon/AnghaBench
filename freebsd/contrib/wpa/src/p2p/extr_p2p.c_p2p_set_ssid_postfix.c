
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct p2p_data {TYPE_1__* cfg; } ;
struct TYPE_2__ {size_t ssid_postfix_len; int ssid_postfix; } ;


 int os_memcpy (int ,int const*,size_t) ;
 int p2p_dbg (struct p2p_data*,char*,int ) ;
 int wpa_ssid_txt (int const*,size_t) ;

int p2p_set_ssid_postfix(struct p2p_data *p2p, const u8 *postfix, size_t len)
{
 p2p_dbg(p2p, "New SSID postfix: %s", wpa_ssid_txt(postfix, len));
 if (postfix == ((void*)0)) {
  p2p->cfg->ssid_postfix_len = 0;
  return 0;
 }
 if (len > sizeof(p2p->cfg->ssid_postfix))
  return -1;
 os_memcpy(p2p->cfg->ssid_postfix, postfix, len);
 p2p->cfg->ssid_postfix_len = len;
 return 0;
}
