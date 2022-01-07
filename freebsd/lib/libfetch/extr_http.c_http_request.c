
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct url_stat {int dummy; } ;
struct url {int dummy; } ;
typedef int FILE ;


 int * http_request_body (struct url*,char const*,struct url_stat*,struct url*,char const*,int *,int *) ;

FILE *
http_request(struct url *URL, const char *op, struct url_stat *us,
 struct url *purl, const char *flags)
{

 return (http_request_body(URL, op, us, purl, flags, ((void*)0), ((void*)0)));
}
