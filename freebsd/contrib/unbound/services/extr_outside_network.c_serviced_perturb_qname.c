
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct ub_randstate {int dummy; } ;


 int LDNS_MAX_DOMAINLEN ;
 scalar_t__ VERB_ALGO ;
 int dname_str (scalar_t__*,char*) ;
 scalar_t__ isalpha (unsigned char) ;
 int log_assert (int) ;
 scalar_t__ tolower (unsigned char) ;
 scalar_t__ toupper (unsigned char) ;
 long ub_random (struct ub_randstate*) ;
 int verbose (scalar_t__,char*,char*) ;
 scalar_t__ verbosity ;

__attribute__((used)) static void
serviced_perturb_qname(struct ub_randstate* rnd, uint8_t* qbuf, size_t len)
{
 uint8_t lablen;
 uint8_t* d = qbuf + 10;
 long int random = 0;
 int bits = 0;
 log_assert(len >= 10 + 5 );
 (void)len;
 lablen = *d++;
 while(lablen) {
  while(lablen--) {

   if(isalpha((unsigned char)*d)) {

    if(bits == 0) {
     random = ub_random(rnd);
     bits = 30;
    }
    if(random & 0x1) {
     *d = (uint8_t)toupper((unsigned char)*d);
    } else {
     *d = (uint8_t)tolower((unsigned char)*d);
    }
    random >>= 1;
    bits--;
   }
   d++;
  }
  lablen = *d++;
 }
 if(verbosity >= VERB_ALGO) {
  char buf[LDNS_MAX_DOMAINLEN+1];
  dname_str(qbuf+10, buf);
  verbose(VERB_ALGO, "qname perturbed to %s", buf);
 }
}
