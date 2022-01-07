
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32 ;
typedef scalar_t__ keyid_t ;


 size_t MD5authencrypt (int ,int ,int ,int *,size_t) ;
 int authencryptions ;
 int authhavekey (scalar_t__) ;
 int cache_secret ;
 int cache_secretsize ;
 int cache_type ;
 int htonl (scalar_t__) ;

size_t
authencrypt(
 keyid_t keyno,
 u_int32 * pkt,
 size_t length
 )
{





 authencryptions++;
 pkt[length / 4] = htonl(keyno);
 if (0 == keyno) {
  return 4;
 }
 if (!authhavekey(keyno)) {
  return 0;
 }

 return MD5authencrypt(cache_type,
         cache_secret, cache_secretsize,
         pkt, length);
}
