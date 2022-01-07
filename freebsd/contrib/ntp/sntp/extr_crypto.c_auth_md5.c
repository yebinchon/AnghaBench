
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int u_char ;
typedef int dbuf ;
struct TYPE_3__ {scalar_t__ key_len; int key_seq; int typen; } ;
typedef TYPE_1__ Key_T ;


 int EVP_MAX_MD_SIZE ;
 int FALSE ;
 scalar_t__ compute_mac (int *,int ,int const*,scalar_t__,int ,scalar_t__) ;
 int memcmp (int *,int const*,scalar_t__) ;

int
auth_md5(
 void const * pkt_data,
 int pkt_size,
 int mac_size,
 Key_T const * cmp_key
 )
{
 u_int len = 0;
 u_char const * pkt_ptr = pkt_data;
 u_char dbuf[EVP_MAX_MD_SIZE];

 if (mac_size <= 0 || (size_t)mac_size > sizeof(dbuf))
  return FALSE;

 len = compute_mac(dbuf, cmp_key->typen,
     pkt_ptr, (u_int)pkt_size,
     cmp_key->key_seq, (u_int)cmp_key->key_len);

 pkt_ptr += pkt_size + 4;
 if (len > (u_int)mac_size)
  len = (u_int)mac_size;





 return ((u_int)mac_size == len) && !memcmp(dbuf, pkt_ptr, len);
}
