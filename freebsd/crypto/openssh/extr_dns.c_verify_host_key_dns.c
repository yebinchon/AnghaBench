
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int8_t ;
typedef scalar_t__ u_int ;
typedef int u_char ;
struct sshkey {int dummy; } ;
struct sockaddr {int dummy; } ;
struct rrsetinfo {int rri_flags; scalar_t__ rri_nrdatas; TYPE_1__* rri_rdatas; } ;
struct TYPE_2__ {int rdi_length; int rdi_data; } ;


 int DNS_RDATACLASS_IN ;
 int DNS_RDATATYPE_SSHFP ;
 int DNS_VERIFY_FOUND ;
 int DNS_VERIFY_MATCH ;
 int DNS_VERIFY_SECURE ;
 int RRSET_VALIDATED ;
 scalar_t__ SSHFP_HASH_RESERVED ;
 int debug (char*,...) ;
 int debug3 (char*) ;
 int dns_read_key (scalar_t__*,scalar_t__*,int **,size_t*,struct sshkey*) ;
 int dns_read_rdata (scalar_t__*,scalar_t__*,int **,size_t*,int ,int ) ;
 int dns_result_totext (int) ;
 int error (char*) ;
 int fatal (char*) ;
 int free (int *) ;
 int freerrset (struct rrsetinfo*) ;
 int getrrsetbyname (char const*,int ,int ,int ,struct rrsetinfo**) ;
 scalar_t__ is_numeric_hostname (char const*) ;
 scalar_t__ timingsafe_bcmp (int *,int *,size_t) ;
 int verbose (char*,...) ;

int
verify_host_key_dns(const char *hostname, struct sockaddr *address,
    struct sshkey *hostkey, int *flags)
{
 u_int counter;
 int result;
 struct rrsetinfo *fingerprints = ((void*)0);

 u_int8_t hostkey_algorithm;
 u_int8_t hostkey_digest_type = SSHFP_HASH_RESERVED;
 u_char *hostkey_digest;
 size_t hostkey_digest_len;

 u_int8_t dnskey_algorithm;
 u_int8_t dnskey_digest_type;
 u_char *dnskey_digest;
 size_t dnskey_digest_len;

 *flags = 0;

 debug3("verify_host_key_dns");
 if (hostkey == ((void*)0))
  fatal("No key to look up!");

 if (is_numeric_hostname(hostname)) {
  debug("skipped DNS lookup for numerical hostname");
  return -1;
 }

 result = getrrsetbyname(hostname, DNS_RDATACLASS_IN,
     DNS_RDATATYPE_SSHFP, 0, &fingerprints);
 if (result) {
  verbose("DNS lookup error: %s", dns_result_totext(result));
  return -1;
 }

 if (fingerprints->rri_flags & RRSET_VALIDATED) {
  *flags |= DNS_VERIFY_SECURE;
  debug("found %d secure fingerprints in DNS",
      fingerprints->rri_nrdatas);
 } else {
  debug("found %d insecure fingerprints in DNS",
      fingerprints->rri_nrdatas);
 }


 if (!dns_read_key(&hostkey_algorithm, &hostkey_digest_type,
     &hostkey_digest, &hostkey_digest_len, hostkey)) {
  error("Error calculating host key fingerprint.");
  freerrset(fingerprints);
  return -1;
 }

 if (fingerprints->rri_nrdatas)
  *flags |= DNS_VERIFY_FOUND;

 for (counter = 0; counter < fingerprints->rri_nrdatas; counter++) {




  if (!dns_read_rdata(&dnskey_algorithm, &dnskey_digest_type,
      &dnskey_digest, &dnskey_digest_len,
      fingerprints->rri_rdatas[counter].rdi_data,
      fingerprints->rri_rdatas[counter].rdi_length)) {
   verbose("Error parsing fingerprint from DNS.");
   continue;
  }

  if (hostkey_digest_type != dnskey_digest_type) {
   hostkey_digest_type = dnskey_digest_type;
   free(hostkey_digest);


   if (!dns_read_key(&hostkey_algorithm,
       &hostkey_digest_type, &hostkey_digest,
       &hostkey_digest_len, hostkey)) {
    error("Error calculating key fingerprint.");
    freerrset(fingerprints);
    return -1;
   }
  }


  if (hostkey_algorithm == dnskey_algorithm &&
      hostkey_digest_type == dnskey_digest_type) {
   if (hostkey_digest_len == dnskey_digest_len &&
       timingsafe_bcmp(hostkey_digest, dnskey_digest,
       hostkey_digest_len) == 0)
    *flags |= DNS_VERIFY_MATCH;
  }
  free(dnskey_digest);
 }

 free(hostkey_digest);
 freerrset(fingerprints);

 if (*flags & DNS_VERIFY_FOUND)
  if (*flags & DNS_VERIFY_MATCH)
   debug("matching host key fingerprint found in DNS");
  else
   debug("mismatching host key fingerprint found in DNS");
 else
  debug("no host key fingerprint found in DNS");

 return 0;
}
