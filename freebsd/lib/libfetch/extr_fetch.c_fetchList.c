
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct url_ent {int dummy; } ;
struct url {int scheme; } ;


 int SCHEME_FILE ;
 int SCHEME_FTP ;
 int SCHEME_HTTP ;
 int SCHEME_HTTPS ;
 int URL_BAD_SCHEME ;
 struct url_ent* fetchListFTP (struct url*,char const*) ;
 struct url_ent* fetchListFile (struct url*,char const*) ;
 struct url_ent* fetchListHTTP (struct url*,char const*) ;
 scalar_t__ strcmp (int ,int ) ;
 int url_seterr (int ) ;

struct url_ent *
fetchList(struct url *URL, const char *flags)
{

 if (strcmp(URL->scheme, SCHEME_FILE) == 0)
  return (fetchListFile(URL, flags));
 else if (strcmp(URL->scheme, SCHEME_FTP) == 0)
  return (fetchListFTP(URL, flags));
 else if (strcmp(URL->scheme, SCHEME_HTTP) == 0)
  return (fetchListHTTP(URL, flags));
 else if (strcmp(URL->scheme, SCHEME_HTTPS) == 0)
  return (fetchListHTTP(URL, flags));
 url_seterr(URL_BAD_SCHEME);
 return (((void*)0));
}
