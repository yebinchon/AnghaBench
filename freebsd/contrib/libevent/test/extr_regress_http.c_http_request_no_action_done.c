
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;


 int EVUTIL_ASSERT (int ) ;
 int event_base_loopexit (int ,int *) ;
 int exit_base ;

__attribute__((used)) static void
http_request_no_action_done(struct evhttp_request *req, void *arg)
{
 EVUTIL_ASSERT(exit_base);
 event_base_loopexit(exit_base, ((void*)0));
}
