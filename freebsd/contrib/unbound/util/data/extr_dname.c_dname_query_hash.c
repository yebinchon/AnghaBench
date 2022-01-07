
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int hashvalue_type ;


 int LDNS_MAX_LABELLEN ;
 int hashlittle (int*,int,int ) ;
 int log_assert (int) ;
 scalar_t__ tolower (unsigned char) ;

hashvalue_type
dname_query_hash(uint8_t* dname, hashvalue_type h)
{
 uint8_t labuf[LDNS_MAX_LABELLEN+1];
 uint8_t lablen;
 int i;


 lablen = *dname++;
 while(lablen) {
  log_assert(lablen <= LDNS_MAX_LABELLEN);
  labuf[0] = lablen;
  i=0;
  while(lablen--) {
   labuf[++i] = (uint8_t)tolower((unsigned char)*dname);
   dname++;
  }
  h = hashlittle(labuf, labuf[0] + 1, h);
  lablen = *dname++;
 }

 return h;
}
