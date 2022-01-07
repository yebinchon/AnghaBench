
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evdns_server_request {int nquestions; TYPE_1__** questions; } ;
struct TYPE_2__ {char* name; } ;


 int TT_BLATHER (char*) ;
 int TT_DIE (char*) ;
 int current_req ;
 int evdns_cancel_request (int *,int ) ;
 int evdns_server_request_respond (struct evdns_server_request*,int) ;
 scalar_t__ request_count ;
 int tt_assert (int) ;

__attribute__((used)) static void
search_cancel_server_cb(struct evdns_server_request *req, void *data)
{
 const char *question;

 if (req->nquestions != 1)
  TT_DIE(("Only handling one question at a time; got %d",
   req->nquestions));

 question = req->questions[0]->name;

 TT_BLATHER(("got question, %s", question));

 tt_assert(request_count > 0);
 tt_assert(!evdns_server_request_respond(req, 3));

 if (!--request_count)
  evdns_cancel_request(((void*)0), current_req);

end:
 ;
}
