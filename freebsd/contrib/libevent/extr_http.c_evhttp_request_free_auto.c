
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int flags; } ;


 int EVHTTP_USER_OWNED ;
 int evhttp_request_free (struct evhttp_request*) ;

__attribute__((used)) static inline void
evhttp_request_free_auto(struct evhttp_request *req)
{
 if (!(req->flags & EVHTTP_USER_OWNED))
  evhttp_request_free(req);
}
