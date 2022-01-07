
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct url {int scheme; } ;
typedef int FILE ;


 int SCHEME_FILE ;
 int SCHEME_FTP ;
 int SCHEME_HTTP ;
 int SCHEME_HTTPS ;
 int URL_BAD_SCHEME ;
 int * fetchPutFTP (struct url*,char const*) ;
 int * fetchPutFile (struct url*,char const*) ;
 int * fetchPutHTTP (struct url*,char const*) ;
 scalar_t__ strcmp (int ,int ) ;
 int url_seterr (int ) ;

FILE *
fetchPut(struct url *URL, const char *flags)
{

 if (strcmp(URL->scheme, SCHEME_FILE) == 0)
  return (fetchPutFile(URL, flags));
 else if (strcmp(URL->scheme, SCHEME_FTP) == 0)
  return (fetchPutFTP(URL, flags));
 else if (strcmp(URL->scheme, SCHEME_HTTP) == 0)
  return (fetchPutHTTP(URL, flags));
 else if (strcmp(URL->scheme, SCHEME_HTTPS) == 0)
  return (fetchPutHTTP(URL, flags));
 url_seterr(URL_BAD_SCHEME);
 return (((void*)0));
}
