
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32 ;
typedef scalar_t__ keyid_t ;


 int FALSE ;
 int MD5authdecrypt (int ,int ,int ,int *,size_t,size_t) ;
 int authdecryptions ;
 int authhavekey (scalar_t__) ;
 int cache_secret ;
 int cache_secretsize ;
 int cache_type ;

int
authdecrypt(
 keyid_t keyno,
 u_int32 * pkt,
 size_t length,
 size_t size
 )
{





 authdecryptions++;
 if (0 == keyno || !authhavekey(keyno) || size < 4) {
  return FALSE;
 }

 return MD5authdecrypt(cache_type,
         cache_secret, cache_secretsize,
         pkt, length, size);
}
