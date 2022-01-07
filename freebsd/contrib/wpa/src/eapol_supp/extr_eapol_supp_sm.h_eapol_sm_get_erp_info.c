
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct eapol_sm {int dummy; } ;
struct eap_peer_config {int dummy; } ;



__attribute__((used)) static inline int
eapol_sm_get_erp_info(struct eapol_sm *sm, struct eap_peer_config *config,
        const u8 **username, size_t *username_len,
        const u8 **realm, size_t *realm_len,
        u16 *erp_next_seq_num, const u8 **rrk, size_t *rrk_len)
{
 return -1;
}
