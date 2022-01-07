
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int u_char ;
struct TYPE_3__ {int key_len; int key_seq; int typen; } ;
typedef TYPE_1__ Key_T ;


 int EVP_MAX_MD_SIZE ;
 scalar_t__ compute_mac (int *,int ,void const*,scalar_t__,int ,scalar_t__) ;
 int memcpy (void*,int *,scalar_t__) ;

int
make_mac(
 const void * pkt_data,
 int pkt_size,
 int mac_size,
 Key_T const * cmp_key,
 void * digest
 )
{
 u_int len;
 u_char dbuf[EVP_MAX_MD_SIZE];

 if (cmp_key->key_len > 64 || mac_size <= 0)
  return 0;
 if (pkt_size % 4 != 0)
  return 0;

 len = compute_mac(dbuf, cmp_key->typen,
     pkt_data, (u_int)pkt_size,
     cmp_key->key_seq, (u_int)cmp_key->key_len);


 if (len) {
  if (len > (u_int)mac_size)
   len = (u_int)mac_size;
  memcpy(digest, dbuf, len);
 }
 return (int)len;
}
