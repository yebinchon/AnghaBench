
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct url {int * scheme; scalar_t__ port; int host; } ;


 int SCHEME_HTTP ;
 int fetchFreeURL (struct url*) ;
 struct url* fetchParseURL (char*) ;
 scalar_t__ fetch_default_proxy_port (int *) ;
 scalar_t__ fetch_no_proxy_match (int ) ;
 char* getenv (char*) ;
 int * strchr (char const*,char) ;
 scalar_t__ strcmp (int *,int ) ;
 int strcpy (int *,int ) ;

__attribute__((used)) static struct url *
http_get_proxy(struct url * url, const char *flags)
{
 struct url *purl;
 char *p;

 if (flags != ((void*)0) && strchr(flags, 'd') != ((void*)0))
  return (((void*)0));
 if (fetch_no_proxy_match(url->host))
  return (((void*)0));
 if (((p = getenv("HTTP_PROXY")) || (p = getenv("http_proxy"))) &&
     *p && (purl = fetchParseURL(p))) {
  if (!*purl->scheme)
   strcpy(purl->scheme, SCHEME_HTTP);
  if (!purl->port)
   purl->port = fetch_default_proxy_port(purl->scheme);
  if (strcmp(purl->scheme, SCHEME_HTTP) == 0)
   return (purl);
  fetchFreeURL(purl);
 }
 return (((void*)0));
}
