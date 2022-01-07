
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int b64_ntop (int *,size_t,char*,size_t) ;
 char* calloc (int,size_t) ;
 int freezero (char*,size_t) ;
 size_t strcspn (char*,char*) ;
 int strlcat (char*,char*,size_t) ;
 int strlcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static char *
fingerprint_b64(const char *alg, u_char *dgst_raw, size_t dgst_raw_len)
{
 char *ret;
 size_t plen = strlen(alg) + 1;
 size_t rlen = ((dgst_raw_len + 2) / 3) * 4 + plen + 1;
 int r;

 if (dgst_raw_len > 65536 || (ret = calloc(1, rlen)) == ((void*)0))
  return ((void*)0);
 strlcpy(ret, alg, rlen);
 strlcat(ret, ":", rlen);
 if (dgst_raw_len == 0)
  return ret;
 if ((r = b64_ntop(dgst_raw, dgst_raw_len,
     ret + plen, rlen - plen)) == -1) {
  freezero(ret, rlen);
  return ((void*)0);
 }

 ret[strcspn(ret, "=")] = '\0';
 return ret;
}
