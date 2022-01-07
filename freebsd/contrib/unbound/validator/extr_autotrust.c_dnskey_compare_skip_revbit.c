
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int LDNS_KEY_REVOKE_KEY ;

__attribute__((used)) static int
dnskey_compare_skip_revbit(uint8_t* a, size_t a_len, uint8_t* b, size_t b_len)
{
 size_t i;
 if(a_len != b_len)
  return -1;

 for(i = 0; i < a_len; i++)
 {
  uint8_t rdf1, rdf2;
  rdf1 = a[i];
  rdf2 = b[i];
  if(i==1) {

   rdf1 |= LDNS_KEY_REVOKE_KEY;
   rdf2 |= LDNS_KEY_REVOKE_KEY;
  }
  if (rdf1 < rdf2) return -1;
  else if (rdf1 > rdf2) return 1;
        }
 return 0;
}
