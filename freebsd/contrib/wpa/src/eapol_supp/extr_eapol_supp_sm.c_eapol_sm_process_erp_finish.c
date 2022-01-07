
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eapol_sm {int eap; } ;
struct eap_hdr {int dummy; } ;


 int eap_peer_finish (int ,struct eap_hdr const*,size_t) ;

void eapol_sm_process_erp_finish(struct eapol_sm *sm, const u8 *buf,
     size_t len)
{





}
