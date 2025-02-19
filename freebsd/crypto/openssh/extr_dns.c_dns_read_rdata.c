
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_char ;


 int SSHFP_HASH_RESERVED ;
 int SSHFP_KEY_RESERVED ;
 int memcpy (int *,int *,size_t) ;
 int * xmalloc (size_t) ;
 scalar_t__ xstrdup (char*) ;

__attribute__((used)) static int
dns_read_rdata(u_int8_t *algorithm, u_int8_t *digest_type,
    u_char **digest, size_t *digest_len, u_char *rdata, int rdata_len)
{
 int success = 0;

 *algorithm = SSHFP_KEY_RESERVED;
 *digest_type = SSHFP_HASH_RESERVED;

 if (rdata_len >= 2) {
  *algorithm = rdata[0];
  *digest_type = rdata[1];
  *digest_len = rdata_len - 2;

  if (*digest_len > 0) {
   *digest = xmalloc(*digest_len);
   memcpy(*digest, rdata + 2, *digest_len);
  } else {
   *digest = (u_char *)xstrdup("");
  }

  success = 1;
 }

 return success;
}
