
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;


 char* cstr_token (char const*,char*,char const**) ;
 scalar_t__ tls_match_suffix_helper (int *,char const*,int,int) ;

__attribute__((used)) static int tls_match_suffix(X509 *cert, const char *match, int full)
{




 const char *token, *last = ((void*)0);


 while ((token = cstr_token(match, ";", &last))) {
  if (tls_match_suffix_helper(cert, token, last - token, full))
   return 1;
 }

 return 0;

}
