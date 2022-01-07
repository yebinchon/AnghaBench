
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int response_code; } ;



int
evhttp_request_get_response_code(const struct evhttp_request *req)
{
 return req->response_code;
}
