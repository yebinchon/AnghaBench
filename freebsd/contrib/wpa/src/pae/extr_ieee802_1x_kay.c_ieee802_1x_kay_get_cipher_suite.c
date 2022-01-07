
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
struct macsec_ciphersuite {scalar_t__ id; } ;
struct ieee802_1x_mka_participant {int dummy; } ;
typedef int be64 ;


 int CS_ID_LEN ;
 unsigned int CS_TABLE_SIZE ;
 scalar_t__ be_to_host64 (int ) ;
 struct macsec_ciphersuite* cipher_suite_tbl ;
 int os_memcpy (int *,int const*,int ) ;

__attribute__((used)) static struct macsec_ciphersuite *
ieee802_1x_kay_get_cipher_suite(struct ieee802_1x_mka_participant *participant,
    const u8 *cs_id, unsigned int *idx)
{
 unsigned int i;
 u64 cs;
 be64 _cs;

 os_memcpy(&_cs, cs_id, CS_ID_LEN);
 cs = be_to_host64(_cs);

 for (i = 0; i < CS_TABLE_SIZE; i++) {
  if (cipher_suite_tbl[i].id == cs) {
   *idx = i;
   return &cipher_suite_tbl[i];
  }
 }

 return ((void*)0);
}
