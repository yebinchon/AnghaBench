
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 int PMKID_LEN ;
 int SHA384_MAC_LEN ;
 int hmac_sha1_vector (int const*,size_t,int,int const**,size_t const*,unsigned char*) ;
 int hmac_sha256_vector (int const*,size_t,int,int const**,size_t const*,unsigned char*) ;
 int hmac_sha384_vector (int const*,size_t,int,int const**,size_t const*,unsigned char*) ;
 int os_memcpy (int *,unsigned char*,int ) ;
 int wpa_hexdump (int ,char*,unsigned char*,int ) ;
 scalar_t__ wpa_key_mgmt_sha256 (int) ;
 scalar_t__ wpa_key_mgmt_sha384 (int) ;
 int wpa_printf (int ,char*) ;

void rsn_pmkid(const u8 *pmk, size_t pmk_len, const u8 *aa, const u8 *spa,
        u8 *pmkid, int akmp)
{
 char *title = "PMK Name";
 const u8 *addr[3];
 const size_t len[3] = { 8, ETH_ALEN, ETH_ALEN };
 unsigned char hash[SHA384_MAC_LEN];

 addr[0] = (u8 *) title;
 addr[1] = aa;
 addr[2] = spa;

 if (0) {
 } else {
  wpa_printf(MSG_DEBUG, "RSN: Derive PMKID using HMAC-SHA-1");
  hmac_sha1_vector(pmk, pmk_len, 3, addr, len, hash);
 }
 wpa_hexdump(MSG_DEBUG, "RSN: Derived PMKID", hash, PMKID_LEN);
 os_memcpy(pmkid, hash, PMKID_LEN);
}
