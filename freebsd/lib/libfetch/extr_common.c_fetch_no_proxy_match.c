
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;
 scalar_t__ isspace (unsigned char) ;
 scalar_t__ strcmp (char const*,char*) ;
 size_t strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char const*,size_t) ;

int
fetch_no_proxy_match(const char *host)
{
 const char *no_proxy, *p, *q;
 size_t h_len, d_len;

 if ((no_proxy = getenv("NO_PROXY")) == ((void*)0) &&
     (no_proxy = getenv("no_proxy")) == ((void*)0))
  return (0);


 if (strcmp(no_proxy, "*") == 0)
  return (1);

 h_len = strlen(host);
 p = no_proxy;
 do {

  while (*p == ',' || isspace((unsigned char)*p))
   p++;


  for (q = p; *q; ++q)
   if (*q == ',' || isspace((unsigned char)*q))
    break;

  d_len = q - p;
  if (d_len > 0 && h_len >= d_len &&
      strncasecmp(host + h_len - d_len,
   p, d_len) == 0) {

   return (1);
  }

  p = q + 1;
 } while (*q);

 return (0);
}
