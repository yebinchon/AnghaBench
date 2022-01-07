
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct url_stat {int dummy; } ;
struct url {int dummy; } ;
typedef int FILE ;


 int fclose (int *) ;
 int http_get_proxy (struct url*,char const*) ;
 int * http_request (struct url*,char*,struct url_stat*,int ,char const*) ;

int
fetchStatHTTP(struct url *URL, struct url_stat *us, const char *flags)
{
 FILE *f;

 f = http_request(URL, "HEAD", us, http_get_proxy(URL, flags), flags);
 if (f == ((void*)0))
  return (-1);
 fclose(f);
 return (0);
}
