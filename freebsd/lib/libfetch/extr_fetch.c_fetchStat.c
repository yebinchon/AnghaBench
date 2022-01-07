
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct url_stat {int size; scalar_t__ mtime; scalar_t__ atime; } ;
struct url {int scheme; } ;


 int SCHEME_FILE ;
 int SCHEME_FTP ;
 int SCHEME_HTTP ;
 int SCHEME_HTTPS ;
 int URL_BAD_SCHEME ;
 int fetchStatFTP (struct url*,struct url_stat*,char const*) ;
 int fetchStatFile (struct url*,struct url_stat*,char const*) ;
 int fetchStatHTTP (struct url*,struct url_stat*,char const*) ;
 scalar_t__ strcmp (int ,int ) ;
 int url_seterr (int ) ;

int
fetchStat(struct url *URL, struct url_stat *us, const char *flags)
{

 if (us != ((void*)0)) {
  us->size = -1;
  us->atime = us->mtime = 0;
 }
 if (strcmp(URL->scheme, SCHEME_FILE) == 0)
  return (fetchStatFile(URL, us, flags));
 else if (strcmp(URL->scheme, SCHEME_FTP) == 0)
  return (fetchStatFTP(URL, us, flags));
 else if (strcmp(URL->scheme, SCHEME_HTTP) == 0)
  return (fetchStatHTTP(URL, us, flags));
 else if (strcmp(URL->scheme, SCHEME_HTTPS) == 0)
  return (fetchStatHTTP(URL, us, flags));
 url_seterr(URL_BAD_SCHEME);
 return (-1);
}
