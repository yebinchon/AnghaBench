
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802_1x_mka_dist_sak_body {size_t dan; size_t confid_offset; int sak; int kn; } ;


 int MSG_DEBUG ;
 size_t be_to_host32 (int ) ;
 size_t get_mka_param_body_len (struct ieee802_1x_mka_dist_sak_body*) ;
 int wpa_hexdump (int ,char*,int ,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void
ieee802_1x_mka_dump_dist_sak_body(struct ieee802_1x_mka_dist_sak_body *body)
{
 size_t body_len;

 if (body == ((void*)0))
  return;


 body_len = get_mka_param_body_len(body);
 wpa_printf(MSG_DEBUG, "Distributed SAK parameter set");
 wpa_printf(MSG_DEBUG, "\tDistributed AN........: %d", body->dan);
 wpa_printf(MSG_DEBUG, "\tConfidentiality Offset: %d",
     body->confid_offset);
 wpa_printf(MSG_DEBUG, "\tBody Length...........: %zu", body_len);
 if (!body_len)
  return;

 wpa_printf(MSG_DEBUG, "\tKey Number............: %d",
     be_to_host32(body->kn));

 wpa_hexdump(MSG_DEBUG, "\tAES Key Wrap of SAK...:", body->sak, 24);
}
