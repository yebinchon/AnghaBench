
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_req {int num_headers; char const** headers; } ;


 int strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char const*,int) ;

__attribute__((used)) static const char *
http_find_header(struct http_req *req, const char *header)
{
    int i, len = strlen(header);

    for (i = 0; i < req->num_headers; i++) {
 if (strncasecmp(header, req->headers[i], len) == 0) {
     return req->headers[i] + len + 1;
 }
    }
    return ((void*)0);
}
