
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dpp_authentication {size_t Mx_len; size_t Nx_len; size_t secret_len; int * Lx; int Lx_len; scalar_t__ own_bi; scalar_t__ peer_bi; int * Nx; int * Mx; int r_nonce; int i_nonce; TYPE_1__* curve; } ;
struct TYPE_2__ {size_t nonce_len; } ;


 int DPP_MAX_HASH_LEN ;
 int DPP_MAX_NONCE_LEN ;
 int MSG_DEBUG ;
 int dpp_hkdf_expand (unsigned int,int *,unsigned int,char const*,int *,unsigned int) ;
 int dpp_hmac_vector (unsigned int,int *,int,size_t,int const**,size_t*,int *) ;
 int os_memcpy (int *,int ,size_t) ;
 int os_memset (int *,int ,unsigned int) ;
 int wpa_hexdump_key (int ,char*,int *,unsigned int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int dpp_derive_ke(struct dpp_authentication *auth, u8 *ke,
    unsigned int hash_len)
{
 size_t nonce_len;
 u8 nonces[2 * DPP_MAX_NONCE_LEN];
 const char *info_ke = "DPP Key";
 u8 prk[DPP_MAX_HASH_LEN];
 int res;
 const u8 *addr[3];
 size_t len[3];
 size_t num_elem = 0;

 if (!auth->Mx_len || !auth->Nx_len) {
  wpa_printf(MSG_DEBUG,
      "DPP: Mx/Nx not available - cannot derive ke");
  return -1;
 }




 nonce_len = auth->curve->nonce_len;
 os_memcpy(nonces, auth->i_nonce, nonce_len);
 os_memcpy(&nonces[nonce_len], auth->r_nonce, nonce_len);
 addr[num_elem] = auth->Mx;
 len[num_elem] = auth->Mx_len;
 num_elem++;
 addr[num_elem] = auth->Nx;
 len[num_elem] = auth->Nx_len;
 num_elem++;
 if (auth->peer_bi && auth->own_bi) {
  if (!auth->Lx_len) {
   wpa_printf(MSG_DEBUG,
       "DPP: Lx not available - cannot derive ke");
   return -1;
  }
  addr[num_elem] = auth->Lx;
  len[num_elem] = auth->secret_len;
  num_elem++;
 }
 res = dpp_hmac_vector(hash_len, nonces, 2 * nonce_len,
         num_elem, addr, len, prk);
 if (res < 0)
  return -1;
 wpa_hexdump_key(MSG_DEBUG, "DPP: PRK = HKDF-Extract(<>, IKM)",
   prk, hash_len);


 res = dpp_hkdf_expand(hash_len, prk, hash_len, info_ke, ke, hash_len);
 os_memset(prk, 0, hash_len);
 if (res < 0)
  return -1;

 wpa_hexdump_key(MSG_DEBUG, "DPP: ke = HKDF-Expand(PRK, info, L)",
   ke, hash_len);
 return 0;
}
