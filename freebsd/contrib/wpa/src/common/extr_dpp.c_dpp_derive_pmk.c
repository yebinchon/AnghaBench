
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DPP_MAX_HASH_LEN ;
 int MSG_DEBUG ;
 int dpp_hkdf_expand (unsigned int,int *,unsigned int,char const*,int *,unsigned int) ;
 scalar_t__ dpp_hmac (unsigned int,int *,unsigned int,int const*,size_t,int *) ;
 int os_memset (int *,int ,unsigned int) ;
 int wpa_hexdump_key (int ,char*,int *,unsigned int) ;

__attribute__((used)) static int dpp_derive_pmk(const u8 *Nx, size_t Nx_len, u8 *pmk,
     unsigned int hash_len)
{
 u8 salt[DPP_MAX_HASH_LEN], prk[DPP_MAX_HASH_LEN];
 const char *info = "DPP PMK";
 int res;




 os_memset(salt, 0, hash_len);
 if (dpp_hmac(hash_len, salt, hash_len, Nx, Nx_len, prk) < 0)
  return -1;
 wpa_hexdump_key(MSG_DEBUG, "DPP: PRK = HKDF-Extract(<>, IKM=N.x)",
   prk, hash_len);


 res = dpp_hkdf_expand(hash_len, prk, hash_len, info, pmk, hash_len);
 os_memset(prk, 0, hash_len);
 if (res < 0)
  return -1;

 wpa_hexdump_key(MSG_DEBUG, "DPP: PMK = HKDF-Expand(PRK, info, L)",
   pmk, hash_len);
 return 0;
}
