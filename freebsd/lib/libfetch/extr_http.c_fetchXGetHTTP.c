
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct url_stat {int dummy; } ;
struct url {int dummy; } ;
typedef int FILE ;


 int http_get_proxy (struct url*,char const*) ;
 int * http_request (struct url*,char*,struct url_stat*,int ,char const*) ;

FILE *
fetchXGetHTTP(struct url *URL, struct url_stat *us, const char *flags)
{
 return (http_request(URL, "GET", us, http_get_proxy(URL, flags), flags));
}
