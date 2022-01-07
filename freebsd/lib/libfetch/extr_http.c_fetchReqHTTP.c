
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct url {int dummy; } ;
typedef int FILE ;


 int http_get_proxy (struct url*,char const*) ;
 int * http_request_body (struct url*,char const*,int *,int ,char const*,char const*,char const*) ;

FILE *
fetchReqHTTP(struct url *URL, const char *method, const char *flags,
 const char *content_type, const char *body)
{

 return (http_request_body(URL, method, ((void*)0), http_get_proxy(URL, flags),
     flags, content_type, body));
}
