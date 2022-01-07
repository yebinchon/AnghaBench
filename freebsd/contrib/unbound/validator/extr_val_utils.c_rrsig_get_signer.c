
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 size_t dname_valid (int *,size_t) ;

__attribute__((used)) static void
rrsig_get_signer(uint8_t* data, size_t len, uint8_t** sname, size_t* slen)
{


 if(len < 21) {





  *sname = ((void*)0);
  *slen = 0;
  return;
 }
 data += 20;
 len -= 20;
 *slen = dname_valid(data, len);
 if(!*slen) {

  *sname = ((void*)0);
  return;
 }
 *sname = data;
}
