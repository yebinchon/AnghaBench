
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int flags; } ;


 int EVHTTP_USER_OWNED ;

void
evhttp_request_own(struct evhttp_request *req)
{
 req->flags |= EVHTTP_USER_OWNED;
}
