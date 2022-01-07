
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_request {int hread; } ;
typedef enum httpread_hdr_type { ____Placeholder_httpread_hdr_type } httpread_hdr_type ;


 int httpread_hdr_type_get (int ) ;

enum httpread_hdr_type http_request_get_type(struct http_request *req)
{
 return httpread_hdr_type_get(req->hread);
}
