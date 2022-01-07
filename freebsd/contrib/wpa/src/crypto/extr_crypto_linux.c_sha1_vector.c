
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int SHA1_MAC_LEN ;
 int linux_af_alg_hash_vector (char*,int *,int ,size_t,int const**,size_t const*,int *,int ) ;

int sha1_vector(size_t num_elem, const u8 *addr[], const size_t *len,
  u8 *mac)
{
 return linux_af_alg_hash_vector("sha1", ((void*)0), 0, num_elem, addr, len,
     mac, SHA1_MAC_LEN);
}
