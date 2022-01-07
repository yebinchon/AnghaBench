
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gnutls_x509_crt_t ;


 int os_free (char*) ;
 int os_strchr (char const*,char) ;
 char* os_strdup (char const*) ;
 char* str_token (char*,char*,char**) ;
 int tls_match_suffix_helper (int ,char const*,int) ;

__attribute__((used)) static int tls_match_suffix(gnutls_x509_crt_t cert, const char *match,
       int full)
{
 char *values, *token, *context = ((void*)0);
 int ret = 0;

 if (!os_strchr(match, ';'))
  return tls_match_suffix_helper(cert, match, full);

 values = os_strdup(match);
 if (!values)
  return 0;


 while ((token = str_token(values, ";", &context))) {
  if (tls_match_suffix_helper(cert, token, full)) {
   ret = 1;
   break;
  }
 }

 os_free(values);
 return ret;
}
