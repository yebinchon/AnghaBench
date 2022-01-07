
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_request {int hread; } ;


 char* httpread_uri_get (int ) ;

char * http_request_get_uri(struct http_request *req)
{
 return httpread_uri_get(req->hread);
}
