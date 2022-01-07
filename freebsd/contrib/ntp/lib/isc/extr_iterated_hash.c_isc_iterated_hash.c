
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_sha1_t ;


 int ISC_SHA1_DIGESTLENGTH ;
 int isc_sha1_final (int *,unsigned char*) ;
 int isc_sha1_init (int *) ;
 int isc_sha1_update (int *,unsigned char const*,int) ;

int
isc_iterated_hash(unsigned char out[ISC_SHA1_DIGESTLENGTH],
    unsigned int hashalg, int iterations,
    const unsigned char *salt, int saltlength,
    const unsigned char *in, int inlength)
{
 isc_sha1_t ctx;
 int n = 0;

 if (hashalg != 1)
  return (0);

 do {
  isc_sha1_init(&ctx);
  isc_sha1_update(&ctx, in, inlength);
  isc_sha1_update(&ctx, salt, saltlength);
  isc_sha1_final(&ctx, out);
  in = out;
  inlength = ISC_SHA1_DIGESTLENGTH;
 } while (n++ < iterations);

 return (ISC_SHA1_DIGESTLENGTH);
}
