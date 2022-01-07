
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_request {int hread; } ;


 char* httpread_hdr_line_get (int ,char const*) ;

char * http_request_get_hdr_line(struct http_request *req, const char *tag)
{
 return httpread_hdr_line_get(req->hread, tag);
}
