
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;
struct http_request {struct sockaddr_in cli; } ;



struct sockaddr_in * http_request_get_cli_addr(struct http_request *req)
{
 return &req->cli;
}
