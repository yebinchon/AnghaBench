
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int hex ;


 char* calloc (int,size_t) ;
 int snprintf (char*,int,char*,char*,int ) ;
 int strlcat (char*,char*,size_t) ;
 int strlcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static char *
fingerprint_hex(const char *alg, u_char *dgst_raw, size_t dgst_raw_len)
{
 char *retval, hex[5];
 size_t i, rlen = dgst_raw_len * 3 + strlen(alg) + 2;

 if (dgst_raw_len > 65536 || (retval = calloc(1, rlen)) == ((void*)0))
  return ((void*)0);
 strlcpy(retval, alg, rlen);
 strlcat(retval, ":", rlen);
 for (i = 0; i < dgst_raw_len; i++) {
  snprintf(hex, sizeof(hex), "%s%02x",
      i > 0 ? ":" : "", dgst_raw[i]);
  strlcat(retval, hex, rlen);
 }
 return retval;
}
