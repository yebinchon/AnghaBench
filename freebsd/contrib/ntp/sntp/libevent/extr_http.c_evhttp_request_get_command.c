
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int type; } ;
typedef enum evhttp_cmd_type { ____Placeholder_evhttp_cmd_type } evhttp_cmd_type ;



enum evhttp_cmd_type
evhttp_request_get_command(const struct evhttp_request *req) {
 return (req->type);
}
